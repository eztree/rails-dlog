import { Layout } from "antd";
import React from "react";
import Beers from "./Dogs";
import Header from "./Header";

const { Content, Footer } = Layout;

export default () => (
  <Layout className="layout">
    <Header />
    <Content style={{ padding: "0 50px" }}>
      <div className="site-layout-content" style={{ margin: "100px auto" }}>
        <h1>Dog Catalog</h1>
        <Dogs />
      </div>
    </Content>
    <Footer style={{ textAlign: "center" }}>Dlogs ©2022.</Footer>
  </Layout>
);