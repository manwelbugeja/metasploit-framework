.class public Lcom/keepassdroid/utils/StrUtil;
.super Ljava/lang/Object;
.source "StrUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;ILjava/util/Locale;)I
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)I
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-static {p0, p1, v0, p2}, Lcom/keepassdroid/utils/StrUtil;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;ILjava/util/Locale;)I

    move-result p0

    return p0
.end method

.method public static replaceAllIgnoresCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 76
    invoke-static {p0, p1, v1, p3}, Lcom/keepassdroid/utils/StrUtil;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;ILjava/util/Locale;)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 83
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static splitSearchTerms(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 31
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 34
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 35
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_1

    const/16 v6, 0x9

    if-eq v5, v6, :cond_1

    const/16 v6, 0xd

    if-eq v5, v6, :cond_1

    const/16 v6, 0xa

    if-ne v5, v6, :cond_4

    :cond_1
    if-nez v4, :cond_4

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v1, v2, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v6, 0x22

    if-ne v5, v6, :cond_3

    xor-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 49
    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_6

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method
