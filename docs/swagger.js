const swaggerJsdoc = require("swagger-jsdoc");

/**
 * API Config Info
 */

const swaggerDefinition = {
  openapi: "3.0.0",
  info: {
    title: "Tyba Technical Test Documentation",
    version: "1.0.0",
  },
  servers: [
    {
      url: "http://localhost:3000/api",
    }
  ],
  components: {
      schemas: {
      authLogin: {
        type: "object",
        required: ["user", "password"],
        properties: {
          user: {
            type: "string",
          },
          password: {
            type: "string",
          },
        },
      },
      authRegister: {
        type: "object",
        required: ["name", "user", "password"],
        properties: {
          name: {
            type: "string",
          },
          user: {
            type: "string",
          },
          password: {
            type: "string",
          }
        },
      },
      transactions: {
        type: "object",
        required: [],
        properties: {
          endpoint: {
            type: "string",
          },
          method: {
            type: "string",
          }
        },
      },
      city: {
        type: "object",
        properties: {
          id: {
            type: "integer",
          },
          wikiDataId: {
            type: "string",
          },
          type: {
            type: "string"
          }, 
          city: {
            type: "string"
          },
          name: {
            type: "string"
          },
          country: {
            type: "string"
          },
          countryCode: {
            type: "string"
          },
          region: {
            type: "string"
          },
          regionCode: {
            type: "string"
          },
          elevationMeters: { 
            type: "integer"
          },
          latitude: {
            type: "float"
          },
          longitude: {
            type: "float"
          },
          population: {
            type: "integer"
          },
          timezone: {
            type: "string"
          },
          distance: {
            type: "string"
          },
          deleted: {
            type: "boolean"
          },
          placeType: {
            type: "string"
          }
        },
      },
    },
  },
};

/**
 * Opciones
 */
const options = {
  swaggerDefinition,
  apis: ["./routes/*.js"],
};

const openApiConfigration = swaggerJsdoc(options);

module.exports = openApiConfigration;
