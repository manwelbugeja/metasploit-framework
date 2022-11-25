.class public abstract Lcom/keepassdroid/database/EntrySearchHandler;
.super Lcom/keepassdroid/database/EntryHandler;
.source "EntrySearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keepassdroid/database/EntryHandler<",
        "Lcom/keepassdroid/database/PwEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private listStorage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwEntry;",
            ">;"
        }
    .end annotation
.end field

.field private now:Ljava/util/Date;

.field private sp:Lcom/keepassdroid/database/SearchParameters;


# direct methods
.method protected constructor <init>(Lcom/keepassdroid/database/SearchParameters;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keepassdroid/database/SearchParameters;",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwEntry;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/keepassdroid/database/EntryHandler;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/keepassdroid/database/EntrySearchHandler;->sp:Lcom/keepassdroid/database/SearchParameters;

    .line 45
    iput-object p2, p0, Lcom/keepassdroid/database/EntrySearchHandler;->listStorage:Ljava/util/List;

    .line 46
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/keepassdroid/database/EntrySearchHandler;->now:Ljava/util/Date;

    return-void
.end method

.method public static getInstance(Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/database/SearchParameters;Ljava/util/List;)Lcom/keepassdroid/database/EntrySearchHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keepassdroid/database/PwGroup;",
            "Lcom/keepassdroid/database/SearchParameters;",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwEntry;",
            ">;)",
            "Lcom/keepassdroid/database/EntrySearchHandler;"
        }
    .end annotation

    .line 33
    instance-of v0, p0, Lcom/keepassdroid/database/PwGroupV3;

    if-eqz v0, :cond_0

    .line 34
    new-instance p0, Lcom/keepassdroid/database/EntrySearchHandlerV4;

    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/database/EntrySearchHandlerV4;-><init>(Lcom/keepassdroid/database/SearchParameters;Ljava/util/List;)V

    return-object p0

    .line 35
    :cond_0
    instance-of p0, p0, Lcom/keepassdroid/database/PwGroupV4;

    if-eqz p0, :cond_1

    .line 36
    new-instance p0, Lcom/keepassdroid/database/EntrySearchHandlerV4;

    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/database/EntrySearchHandlerV4;-><init>(Lcom/keepassdroid/database/SearchParameters;Ljava/util/List;)V

    return-object p0

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not implemented."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private searchStrings(Lcom/keepassdroid/database/PwEntry;Ljava/lang/String;)Z
    .locals 5

    .line 99
    iget-object v0, p0, Lcom/keepassdroid/database/EntrySearchHandler;->sp:Lcom/keepassdroid/database/SearchParameters;

    invoke-static {p1, v0}, Lcom/keepassdroid/database/iterator/EntrySearchStringIterator;->getInstance(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/SearchParameters;)Lcom/keepassdroid/database/iterator/EntrySearchStringIterator;

    move-result-object p1

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/keepassdroid/database/iterator/EntrySearchStringIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 101
    invoke-virtual {p1}, Lcom/keepassdroid/database/iterator/EntrySearchStringIterator;->next()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 102
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/keepassdroid/database/EntrySearchHandler;->sp:Lcom/keepassdroid/database/SearchParameters;

    iget-boolean v1, v1, Lcom/keepassdroid/database/SearchParameters;->ignoreCase:Z

    if-eqz v1, :cond_3

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v2

    :cond_4
    return v1
.end method


# virtual methods
.method public operate(Lcom/keepassdroid/database/PwEntry;)Z
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/keepassdroid/database/EntrySearchHandler;->sp:Lcom/keepassdroid/database/SearchParameters;

    iget-boolean v0, v0, Lcom/keepassdroid/database/SearchParameters;->respectEntrySearchingDisabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->isSearchingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/EntrySearchHandler;->sp:Lcom/keepassdroid/database/SearchParameters;

    iget-boolean v0, v0, Lcom/keepassdroid/database/SearchParameters;->excludeExpired:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->expires()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keepassdroid/database/EntrySearchHandler;->now:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->getExpiryTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/keepassdroid/database/EntrySearchHandler;->sp:Lcom/keepassdroid/database/SearchParameters;

    iget-object v0, v0, Lcom/keepassdroid/database/SearchParameters;->searchString:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lcom/keepassdroid/database/EntrySearchHandler;->sp:Lcom/keepassdroid/database/SearchParameters;

    iget-boolean v2, v2, Lcom/keepassdroid/database/SearchParameters;->ignoreCase:Z

    if-eqz v2, :cond_2

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/keepassdroid/database/EntrySearchHandler;->searchStrings(Lcom/keepassdroid/database/PwEntry;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    iget-object v0, p0, Lcom/keepassdroid/database/EntrySearchHandler;->listStorage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 69
    :cond_3
    iget-object v2, p0, Lcom/keepassdroid/database/EntrySearchHandler;->sp:Lcom/keepassdroid/database/SearchParameters;

    iget-boolean v2, v2, Lcom/keepassdroid/database/SearchParameters;->searchInGroupNames:Z

    if-eqz v2, :cond_5

    .line 70
    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->getParent()Lcom/keepassdroid/database/PwGroup;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 72
    invoke-virtual {v2}, Lcom/keepassdroid/database/PwGroup;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 74
    iget-object v3, p0, Lcom/keepassdroid/database/EntrySearchHandler;->sp:Lcom/keepassdroid/database/SearchParameters;

    iget-boolean v3, v3, Lcom/keepassdroid/database/SearchParameters;->ignoreCase:Z

    if-eqz v3, :cond_4

    .line 75
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 78
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 79
    iget-object v0, p0, Lcom/keepassdroid/database/EntrySearchHandler;->listStorage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 86
    :cond_5
    invoke-virtual {p0, p1}, Lcom/keepassdroid/database/EntrySearchHandler;->searchID(Lcom/keepassdroid/database/PwEntry;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 87
    iget-object v0, p0, Lcom/keepassdroid/database/EntrySearchHandler;->listStorage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return v1
.end method

.method protected searchID(Lcom/keepassdroid/database/PwEntry;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
