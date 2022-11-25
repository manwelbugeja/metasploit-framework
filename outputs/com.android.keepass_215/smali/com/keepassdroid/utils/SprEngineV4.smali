.class public Lcom/keepassdroid/utils/SprEngineV4;
.super Lcom/keepassdroid/utils/SprEngine;
.source "SprEngineV4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/utils/SprEngineV4$TargetResult;
    }
.end annotation


# instance fields
.field private final MAX_RECURSION_DEPTH:I

.field private final STR_REF_END:Ljava/lang/String;

.field private final STR_REF_START:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/keepassdroid/utils/SprEngine;-><init>()V

    const/16 v0, 0xc

    .line 34
    iput v0, p0, Lcom/keepassdroid/utils/SprEngineV4;->MAX_RECURSION_DEPTH:I

    const-string v0, "{REF:"

    .line 35
    iput-object v0, p0, Lcom/keepassdroid/utils/SprEngineV4;->STR_REF_START:Ljava/lang/String;

    const-string v0, "}"

    .line 36
    iput-object v0, p0, Lcom/keepassdroid/utils/SprEngineV4;->STR_REF_END:Ljava/lang/String;

    return-void
.end method

.method private addRefsToCache(Ljava/lang/String;Ljava/lang/String;Lcom/keepassdroid/utils/SprContextV4;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    if-nez p3, :cond_2

    return-void

    .line 173
    :cond_2
    iget-object v0, p3, Lcom/keepassdroid/utils/SprContextV4;->refsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 174
    iget-object p3, p3, Lcom/keepassdroid/utils/SprContextV4;->refsCache:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private compileInternal(Ljava/lang/String;Lcom/keepassdroid/utils/SprContextV4;I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    return-object v0

    :cond_1
    const/16 v1, 0xc

    if-lt p3, v1, :cond_2

    return-object v0

    .line 60
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/keepassdroid/utils/SprEngineV4;->fillRefPlaceholders(Ljava/lang/String;Lcom/keepassdroid/utils/SprContextV4;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private fillRefPlaceholders(Ljava/lang/String;Lcom/keepassdroid/utils/SprContextV4;I)Ljava/lang/String;
    .locals 7

    .line 65
    iget-object v0, p2, Lcom/keepassdroid/utils/SprContextV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_b

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/utils/SprEngineV4;->fillRefsUsingCache(Ljava/lang/String;Lcom/keepassdroid/utils/SprContextV4;)Ljava/lang/String;

    move-result-object p1

    .line 71
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "{REF:"

    invoke-static {p1, v3, v1, v2}, Lcom/keepassdroid/utils/StrUtil;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;ILjava/util/Locale;)I

    move-result v2

    if-gez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 73
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "}"

    invoke-static {p1, v5, v3, v4}, Lcom/keepassdroid/utils/StrUtil;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;ILjava/util/Locale;)I

    move-result v4

    if-gt v4, v2, :cond_2

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 76
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {p0, v2, p2}, Lcom/keepassdroid/utils/SprEngineV4;->findRefTarget(Ljava/lang/String;Lcom/keepassdroid/utils/SprContextV4;)Lcom/keepassdroid/utils/SprEngineV4$TargetResult;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 80
    iget-object v5, v4, Lcom/keepassdroid/utils/SprEngineV4$TargetResult;->entry:Lcom/keepassdroid/database/PwEntryV4;

    .line 81
    iget-char v4, v4, Lcom/keepassdroid/utils/SprEngineV4$TargetResult;->wanted:C

    if-eqz v5, :cond_9

    const/16 v6, 0x41

    if-eq v4, v6, :cond_8

    const/16 v6, 0x49

    if-eq v4, v6, :cond_7

    const/16 v6, 0x4e

    if-eq v4, v6, :cond_6

    const/16 v6, 0x50

    if-eq v4, v6, :cond_5

    const/16 v6, 0x54

    if-eq v4, v6, :cond_4

    const/16 v6, 0x55

    if-eq v4, v6, :cond_3

    goto :goto_2

    .line 90
    :cond_3
    invoke-virtual {v5}, Lcom/keepassdroid/database/PwEntryV4;->getUsername()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 87
    :cond_4
    invoke-virtual {v5}, Lcom/keepassdroid/database/PwEntryV4;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 96
    :cond_5
    invoke-virtual {v5}, Lcom/keepassdroid/database/PwEntryV4;->getPassword()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 99
    :cond_6
    invoke-virtual {v5}, Lcom/keepassdroid/database/PwEntryV4;->getNotes()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 102
    :cond_7
    invoke-virtual {v5}, Lcom/keepassdroid/database/PwEntryV4;->getUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 93
    :cond_8
    invoke-virtual {v5}, Lcom/keepassdroid/database/PwEntryV4;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 109
    :goto_1
    invoke-virtual {p2}, Lcom/keepassdroid/utils/SprContextV4;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keepassdroid/utils/SprContextV4;

    .line 110
    iput-object v5, v4, Lcom/keepassdroid/utils/SprContextV4;->entry:Lcom/keepassdroid/database/PwEntryV4;

    add-int/lit8 v5, p3, 0x1

    .line 112
    invoke-direct {p0, v3, v4, v5}, Lcom/keepassdroid/utils/SprEngineV4;->compileInternal(Ljava/lang/String;Lcom/keepassdroid/utils/SprContextV4;I)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-direct {p0, v2, v3, p2}, Lcom/keepassdroid/utils/SprEngineV4;->addRefsToCache(Ljava/lang/String;Ljava/lang/String;Lcom/keepassdroid/utils/SprContextV4;)V

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/utils/SprEngineV4;->fillRefsUsingCache(Ljava/lang/String;Lcom/keepassdroid/utils/SprContextV4;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_9
    :goto_2
    move v1, v3

    :cond_a
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_4
    return-object p1
.end method

.method private fillRefsUsingCache(Ljava/lang/String;Lcom/keepassdroid/utils/SprContextV4;)Ljava/lang/String;
    .locals 3

    .line 179
    iget-object p2, p2, Lcom/keepassdroid/utils/SprContextV4;->refsCache:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1, v1, v0, v2}, Lcom/keepassdroid/utils/StrUtil;->replaceAllIgnoresCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public compile(Ljava/lang/String;Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;
    .locals 1

    .line 50
    new-instance v0, Lcom/keepassdroid/utils/SprContextV4;

    check-cast p3, Lcom/keepassdroid/database/PwDatabaseV4;

    check-cast p2, Lcom/keepassdroid/database/PwEntryV4;

    invoke-direct {v0, p3, p2}, Lcom/keepassdroid/utils/SprContextV4;-><init>(Lcom/keepassdroid/database/PwDatabaseV4;Lcom/keepassdroid/database/PwEntryV4;)V

    const/4 p2, 0x0

    .line 52
    invoke-direct {p0, p1, v0, p2}, Lcom/keepassdroid/utils/SprEngineV4;->compileInternal(Ljava/lang/String;Lcom/keepassdroid/utils/SprContextV4;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public findRefTarget(Ljava/lang/String;Lcom/keepassdroid/utils/SprContextV4;)Lcom/keepassdroid/utils/SprEngineV4$TargetResult;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 129
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "{REF:"

    .line 130
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x5

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_2

    return-object v0

    .line 136
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x40

    if-eq v1, v4, :cond_3

    return-object v0

    :cond_3
    const/4 v1, 0x3

    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x3a

    if-eq v1, v4, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x2

    .line 142
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    const/4 v4, 0x0

    .line 143
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 145
    new-instance v6, Lcom/keepassdroid/database/SearchParametersV4;

    invoke-direct {v6}, Lcom/keepassdroid/database/SearchParametersV4;-><init>()V

    .line 146
    invoke-virtual {v6}, Lcom/keepassdroid/database/SearchParametersV4;->setupNone()V

    .line 148
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/keepassdroid/database/SearchParametersV4;->searchString:Ljava/lang/String;

    const/16 p1, 0x54

    if-ne v1, p1, :cond_5

    .line 149
    iput-boolean v3, v6, Lcom/keepassdroid/database/SearchParametersV4;->searchInTitles:Z

    goto :goto_0

    :cond_5
    const/16 p1, 0x55

    if-ne v1, p1, :cond_6

    .line 150
    iput-boolean v3, v6, Lcom/keepassdroid/database/SearchParametersV4;->searchInUserNames:Z

    goto :goto_0

    :cond_6
    const/16 p1, 0x41

    if-ne v1, p1, :cond_7

    .line 151
    iput-boolean v3, v6, Lcom/keepassdroid/database/SearchParametersV4;->searchInUrls:Z

    goto :goto_0

    :cond_7
    const/16 p1, 0x50

    if-ne v1, p1, :cond_8

    .line 152
    iput-boolean v3, v6, Lcom/keepassdroid/database/SearchParametersV4;->searchInPasswords:Z

    goto :goto_0

    :cond_8
    const/16 p1, 0x4e

    if-ne v1, p1, :cond_9

    .line 153
    iput-boolean v3, v6, Lcom/keepassdroid/database/SearchParametersV4;->searchInNotes:Z

    goto :goto_0

    :cond_9
    const/16 p1, 0x49

    if-ne v1, p1, :cond_a

    .line 154
    iput-boolean v3, v6, Lcom/keepassdroid/database/SearchParametersV4;->searchInUUIDs:Z

    goto :goto_0

    :cond_a
    const/16 p1, 0x4f

    if-ne v1, p1, :cond_b

    .line 155
    iput-boolean v3, v6, Lcom/keepassdroid/database/SearchParametersV4;->searchInOther:Z

    .line 158
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    iget-object p2, p2, Lcom/keepassdroid/utils/SprContextV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p2, p2, Lcom/keepassdroid/database/PwDatabaseV4;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-virtual {p2, v6, p1}, Lcom/keepassdroid/database/PwGroup;->searchEntries(Lcom/keepassdroid/database/SearchParameters;Ljava/util/List;)V

    .line 161
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_b

    .line 162
    new-instance p2, Lcom/keepassdroid/utils/SprEngineV4$TargetResult;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/database/PwEntryV4;

    invoke-direct {p2, p0, p1, v5}, Lcom/keepassdroid/utils/SprEngineV4$TargetResult;-><init>(Lcom/keepassdroid/utils/SprEngineV4;Lcom/keepassdroid/database/PwEntryV4;C)V

    return-object p2

    :cond_b
    :goto_1
    return-object v0
.end method
