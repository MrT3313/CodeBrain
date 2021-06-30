# Docker Commands

<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Command</th>
            <th>Desc</th>
            <th>Docs</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan=2>BUILD</td>
            <td>docker build [OPTIONS] URL</td>
            <td rowspan=2>Builds an image from a Dockerfile & context</td>
            <td rowspan=2>  
                <a href="https://docs.docker.com/engine/reference/commandline/build/">
                    <div style="height:100%;width:100%">Link</div>
                </a>
            </td>
        </tr>
        <tr>
            <td>docker build [OPTIONS] PATH</td>
        </tr>
        <tr>
            <td>RUN</td>
            <td>docker run [OPTIONS] IMAGE [COMMAND] [ARG...]</td>
            <td>Run Single Command</td>
            <td>
                <a href="https://docs.docker.com/engine/reference/commandline/run/">
                    <div>Link</div>
                </a>
            </td>
        </tr>
        <tr>
            <td>PULL</td>
            <td>docker pull</td>
            <td>Pull an image or a repository from a registry</td>
            <td>
                <a href="https://docs.docker.com/engine/reference/commandline/pull/">
                    <div>Link</div>
                </a>
            </td>
        </tr>
        <tr>
            <td>Interactive Terminal</td>
            <td>docker exec -it [CONTAINER_NAME] bash</td>
            <td>Open interactive terminal for specific container</td>
            <td></td>
        </tr>
    </tbody>
</table>

list all containers `docker ps -a`