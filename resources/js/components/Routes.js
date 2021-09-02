const HTTP_PROTOCOL = location.protocol + '//'
const DOMAIN = location.hostname
const H_DOMAIN = `${HTTP_PROTOCOL}${DOMAIN}`

export const
    REACT_APP_LOGIN = `${H_DOMAIN}/api/login`,
    REACT_APP_TOKENCHECK = `${H_DOMAIN}/api/token/check`,
    REACT_APP_LOGOUT = `${H_DOMAIN}/api/logout`

