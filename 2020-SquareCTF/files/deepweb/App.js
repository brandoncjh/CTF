import React from 'react';
import { Heading, Project, Words, Row, Col, Button, Image } from 'arwes'
import axios from 'axios';
import "./App.css"

const api = axios.create({
  baseURL: process.env.REACT_APP_API_URL
})

class App extends React.Component {
  constructor() {
    super()
    console.log(process.env.REACT_APP_API_URL)
    this.state = {
      projects: [],
      searchTerm: ""
    }
    this.updateSearch = this.updateSearch.bind(this)
    this.fetchPosts = this.fetchPosts.bind(this)
    this.fetchPosts()

  }
  fetchPosts() {
    let url = 'posts'
    if (this.state.searchTerm) {
      url += `?title=${this.state.searchTerm}`
    }
    api.get(url)
      .then(res => {
        this.setState({
          projects: res.data,
        })
      })
  }
  updateSearch(ev) {
    this.setState({
      searchTerm: ev.target.value
    })
  }
  render() {
    return (
      <div id="app">
        <Row>
          <Col s={12} m={6} offset={["m3"]}>
            <Row>
              <Col s={12} m={6}>
                <Heading>Deep web blog</Heading>
              </Col>
              <Col s={12} m={6}>
                <div style={{display: "flex", justifyContent: "flex-end"}}>
                  <input name="searchTerm" value={this.state.searchTerm} onChange={this.updateSearch}></input>
                  <Button onClick={this.fetchPosts}>Search</Button>
                </div>
              </Col>
            </Row>
            {
              this.state.projects.length > 0 ?
              this.state.projects.map(project =>
                <div class="post">
                  <Project animate header={project.title} >
                    {anim => (
                      <div>
                        <Words animate show={anim.entered}>
                          { project.content }
                        </Words>
                        {
                          project.flag && <Words animate layer='alert'>{project.flag}</Words>
                        }
                      </div>
                    )}
                  </Project>
                </div>
              )
              :
                <Image animate resources='/images/wallpaper.jpg'>
                  No exact match found. Are you searching in the right place?
                </Image>
            }
          </Col>
        </Row>
      </div>
    );
  }
}

export default App;