<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:ns="https://www.university.com/uniQuest">

    <!-- Root template -->
    <xsl:template match="/">
        <html>
        <head>
            <title>UniQuest Data</title>
            <style>
                
                table {
                    width: 100%;
                    border-collapse: collapse;
                }
                th, td {
                    border: 1px solid black;
                    padding: 8px;
                    text-align: left;
                }
                th {
                    background-color: #f2f2f2;
                }
            </style>
        </head>
        <body>
            <h1>UniQuest Data</h1>

            <!-- Display Users -->
            <h2>Users</h2>
            <table>
                <tr>
                    <th>User ID</th>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Course</th>
                    <th>Address</th>
                </tr>
                <xsl:for-each select="user/*">
                    <tr>
                        <td><xsl:value-of select="user-id"/></td>
                        <td><xsl:value-of select="user-name"/></td>
                        <td><xsl:value-of select="user-phone"/></td>
                        <td><xsl:value-of select="user-email"/></td>
                        <td><xsl:value-of select="user-course"/></td>
                        <td><xsl:value-of select="user-address"/></td>
                    </tr>
                </xsl:for-each>
            </table>

            <!-- Display Rankings -->
            <h2>Rankings</h2>
            <table>
                <tr>
                    <th>Name</th>
                    <th>Rank</th>
                    <th>Location</th>
                    <th>Contact Info</th>
                </tr>
                <xsl:for-each select="Rank/*">
                    <tr>
                        <td><xsl:value-of select="name"/></td>
                        <td><xsl:value-of select="rank"/></td>
                        <td><xsl:value-of select="location"/></td>
                        <td><xsl:value-of select="contact-info"/></td>
                    </tr>
                </xsl:for-each>
            </table>

            <!-- Display Programs -->
            <h2>Programs</h2>
            <table>
                <tr>
                    <th>Program ID</th>
                    <th>Name</th>
                    <th>Duration</th>
                    <th>Level</th>
                </tr>
                <xsl:for-each select="Program/*">
                    <tr>
                        <td><xsl:value-of select="program-id"/></td>
                        <td><xsl:value-of select="name"/></td>
                        <td><xsl:value-of select="Duration"/></td>
                        <td><xsl:value-of select="level"/></td>
                    </tr>
                </xsl:for-each>
            </table>

            <!-- Display Scholarships -->
            <h2>Scholarships</h2>
            <table>
                <tr>
                    <th>Scholarship ID</th>
                    <th>Name</th>
                    <th>Amount</th>
                    <th>Eligibility</th>
                    <th>Deadline</th>
                    <th>Description</th>
                </tr>
                <xsl:for-each select="Scholarship/*">
                    <tr>
                        <td><xsl:value-of select="scholarshipid"/></td>
                        <td><xsl:value-of select="scholarship-name"/></td>
                        <td><xsl:value-of select="scholarship-amount"/></td>
                        <td><xsl:value-of select="scholarship-eligibility"/></td>
                        <td><xsl:value-of select="scholarship-deadline"/></td>
                        <td><xsl:value-of select="scholarship-descryption"/></td>
                    </tr>
                </xsl:for-each>
            </table>

            <!-- Display Trends -->
            <h2>Trends</h2>
            <table>
                <tr>
                    <th>Trend ID</th>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Date</th>
                </tr>
                <xsl:for-each select="trend/*">
                    <tr>
                        <td><xsl:value-of select="trend-id"/></td>
                        <td><xsl:value-of select="title"/></td>
                        <td><xsl:value-of select="Descryption"/></td>
                        <td><xsl:value-of select="date"/></td>
                    </tr>
                </xsl:for-each>
            </table>

            <!-- Display Messages -->
            <h2>Messages</h2>
            <table>
                <tr>
                    <th>Message ID</th>
                    <th>Sender ID</th>
                    <th>Receiver ID</th>
                    <th>Content</th>
                    <th>Timestamp</th>
                    <th>Status</th>
                </tr>
                <xsl:for-each select="message/*">
                    <tr>
                        <td><xsl:value-of select="messageid"/></td>
                        <td><xsl:value-of select="senderid"/></td>
                        <td><xsl:value-of select="recieverid"/></td>
                        <td><xsl:value-of select="content"/></td>
                        <td><xsl:value-of select="timestamp"/></td>
                        <td><xsl:value-of select="status"/></td>
                    </tr>
                </xsl:for-each>
            </table>

            <!-- Display Favorites -->
            <h2>Favorites</h2>
            <table>
                <tr>
                    <th>Favorite ID</th>
                    <th>Student ID</th>
                    <th>University ID</th>
                    <th>Program ID</th>
                    <th>Date Added</th>
                </tr>
                <xsl:for-each select="favorite/*">
                    <tr>
                        <td><xsl:value-of select="favorite-id"/></td>
                        <td><xsl:value-of select="studentid"/></td>
                        <td><xsl:value-of select="universityid"/></td>
                        <td><xsl:value-of select="program-id"/></td>
                        <td><xsl:value-of select="date-added"/></td>
                    </tr>
                </xsl:for-each>
            </table>

            <!-- Display News -->
            <h2>News</h2>
            <table>
                <tr>
                    <th>News ID</th>
                    <th>Title</th>
                    <th>Content</th>
                    <th>Author</th>
                    <th>Date Added</th>
                    <th>Source</th>
                </tr>
                <xsl:for-each select="news/*">
                    <tr>
                        <td><xsl:value-of select="newsid"/></td>
                        <td><xsl:value-of select="title"/></td>
                        <td><xsl:value-of select="content"/></td>
                        <td><xsl:value-of select="author"/></td>
                        <td><xsl:value-of select="date-added"/></td>
                        <td><xsl:value-of select="source"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
