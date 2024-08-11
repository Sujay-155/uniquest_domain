<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/">
        <html>
            <head>
                <title>University Data</title>
                <style>
                    table {
                        border-collapse: collapse;
                        width: 100%;
                        margin-bottom: 20px;
                    }
                    table, th, td {
                        border: 1px solid black;
                    }
                    th, td {
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h2>User Table</h2>
                <table>
                    <thead>
                        <tr>
                            <th>User ID</th>
                            <th>User Name</th>
                            <th>User Phone</th>
                            <th>User Email</th>
                            <th>User Course</th>
                            <th>User Address</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="//user/*">
                            <tr>
                                <td><xsl:value-of select="user-id" /></td>
                                <td><xsl:value-of select="user-name" /></td>
                                <td><xsl:value-of select="user-phone" /></td>
                                <td><xsl:value-of select="user-email" /></td>
                                <td><xsl:value-of select="user-course" /></td>
                                <td><xsl:value-of select="user-address" /></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>

                <h2>Rank Table</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Rank</th>
                            <th>Location</th>
                            <th>Contact Info</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="//Rank/*">
                            <tr>
                                <td><xsl:value-of select="name" /></td>
                                <td><xsl:value-of select="rank" /></td>
                                <td><xsl:value-of select="location" /></td>
                                <td><xsl:value-of select="contact-info" /></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>

                <h2>Program Table</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Program ID</th>
                            <th>Name</th>
                            <th>Duration</th>
                            <th>Level</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="//Program/*">
                            <tr>
                                <td><xsl:value-of select="program-id" /></td>
                                <td><xsl:value-of select="name" /></td>
                                <td><xsl:value-of select="Duration" /></td>
                                <td><xsl:value-of select="level" /></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>

                <h2>Scholarship Table</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Scholarship ID</th>
                            <th>Scholarship Name</th>
                            <th>Scholarship Amount</th>
                            <th>Scholarship Eligibility</th>
                            <th>Scholarship Deadline</th>
                            <th>Scholarship Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="//Scholarship/*">
                            <tr>
                                <td><xsl:value-of select="scholarshipid" /></td>
                                <td><xsl:value-of select="scholarship-name" /></td>
                                <td><xsl:value-of select="scholarship-amount" /></td>
                                <td><xsl:value-of select="scholarship-eligibility" /></td>
                                <td><xsl:value-of select="scholarship-deadline" /></td>
                                <td><xsl:value-of select="scholarship-descryption" /></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>

                <h2>Trend Table</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Trend ID</th>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="//trend/*">
                            <tr>
                                <td><xsl:value-of select="trend-id" /></td>
                                <td><xsl:value-of select="title" /></td>
                                <td><xsl:value-of select="Descryption" /></td>
                                <td><xsl:value-of select="date" /></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>

                <h2>Message Table</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Message ID</th>
                            <th>Sender ID</th>
                            <th>Receiver ID</th>
                            <th>Content</th>
                            <th>Timestamp</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="//message/*">
                            <tr>
                                <td><xsl:value-of select="messageid" /></td>
                                <td><xsl:value-of select="senderid" /></td>
                                <td><xsl:value-of select="recieverid" /></td>
                                <td><xsl:value-of select="content" /></td>
                                <td><xsl:value-of select="timestamp" /></td>
                                <td><xsl:value-of select="status" /></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>

                <h2>Favorite Table</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Favorite ID</th>
                            <th>Student ID</th>
                            <th>University ID</th>
                            <th>Program ID</th>
                            <th>Date Added</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="//favorite/*">
                            <tr>
                                <td><xsl:value-of select="favorite-id" /></td>
                                <td><xsl:value-of select="studentid" /></td>
                                <td><xsl:value-of select="universityid" /></td>
                                <td><xsl:value-of select="program-id" /></td>
                                <td><xsl:value-of select="date-added" /></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>

                <h2>News Table</h2>
                <table>
                    <thead>
                        <tr>
                            <th>News ID</th>
                            <th>Title</th>
                            <th>Content</th>
                            <th>Author</th>
                            <th>Date Added</th>
                            <th>Source</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="//news/*">
                            <tr>
                                <td><xsl:value-of select="newsid" /></td>
                                <td><xsl:value-of select="title" /></td>
                                <td><xsl:value-of select="content" /></td>
                                <td><xsl:value-of select="author" /></td>
                                <td><xsl:value-of select="date-added" /></td>
                                <td><xsl:value-of select="source" /></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
