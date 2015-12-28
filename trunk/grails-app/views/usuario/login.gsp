<html>
  <head>
    <meta name="layout" content="main" />
    <title>Autenticacao do Usuario</title>
  </head>
  <body>
    <div class="body">
      <h1>Login</h1>
      <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
      </g:if>
      <g:form url="[controller:'usuario',action:'autenticar']" method="post" >
        <div class="dialog">
          <table>
            <tbody>
              <tr class="prop">
                <td class="name">
                  <label for="nomeUsuario">Login:</label>
                </td>
                <td>
                  <input type="text" id="nomeUsuario" name="nomeUsuario"/>
                </td>
              </tr>

              <tr class="prop">
                <td class="name">
                  <label for="senha">Senha:</label>
                </td>
                <td>
                  <input type="password" id="senha" name="senha"/>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="buttons">
          <span class="button">
            <input class="save" type="submit" value="Entrar" />
          </span>
        </div>
      </g:form>
    </div>
  </body>
</html>