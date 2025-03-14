<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <title>Movies List</title>
            <style>
                body {
                    background-color: #f8f9fa;
                    font-family: 'Poppins', sans-serif;
                    color: #343a40;
                    margin: 20px;
                    text-align: center;
                }
                h1 {
                    color:rgba(238, 30, 148, 0.82);
                    font-size: 2.5em;
                    text-shadow: 2px 2px 4px rgba(214, 51, 132, 0.3);
                    margin-bottom: 20px;
                }
                .movie-container {
                    display: flex;
                    flex-wrap: wrap;
                    justify-content: center;
                    gap: 20px;
                    max-width: 80%;
                    margin: auto;
                }
                .movie-card {
                    background:rgb(234, 227, 231);
                    border-radius: 12px;
                    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                    padding: 20px;
                    width: 40%;
                    border-left: 6px solid #d63384;
                    transition: transform 0.3s ease-in-out;
                }
                .movie-card:hover {
                    transform: scale(1.05);
                }
                .movie-title {
                    font-weight: bold;
                    font-size: 1.8em;
                    color:rgb(238, 30, 148, 0.82);
                    margin-bottom: 10px;
                }
                .movie-details {
                    font-size: 1.1em;
                    color: #6c757d;
                    margin: 5px 0;
                }
                .movie-cast {
                    font-size: 1em;
                    color: #495057;
                    margin-top: 10px;
                }
                @media (max-width: 768px) {
                    .movie-card {
                        width: 100%;
                    }
                }
            </style>
        </head>
        <body>
            <h1>Movies List</h1>
            <div class="movie-container">
                <xsl:apply-templates select="movies/movie"/>
            </div>
        </body>
        </html>
    </xsl:template>

    <xsl:template match="movie">
        <div class="movie-card">
            <p class="movie-title">
                <xsl:value-of select="title"/>
            </p>
            <p class="movie-details">
                Directed by: <strong><xsl:value-of select="director"/></strong>
            </p>
            <p class="movie-details">
                Year: <em><xsl:value-of select="year"/></em>
            </p>
            <p class="movie-cast">
                Cast: <xsl:value-of select="cast"/>
            </p>
        </div>
    </xsl:template>
</xsl:stylesheet>