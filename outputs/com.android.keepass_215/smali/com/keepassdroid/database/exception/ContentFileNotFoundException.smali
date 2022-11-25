.class public Lcom/keepassdroid/database/exception/ContentFileNotFoundException;
.super Ljava/io/FileNotFoundException;
.source "ContentFileNotFoundException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/net/Uri;)Ljava/io/FileNotFoundException;
    .locals 1

    if-nez p0, :cond_0

    .line 33
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    return-object p0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-static {p0}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "content"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 38
    new-instance p0, Lcom/keepassdroid/database/exception/ContentFileNotFoundException;

    invoke-direct {p0}, Lcom/keepassdroid/database/exception/ContentFileNotFoundException;-><init>()V

    return-object p0

    .line 41
    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    return-object p0
.end method
