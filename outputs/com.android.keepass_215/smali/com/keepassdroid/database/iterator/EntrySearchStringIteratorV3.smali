.class public Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;
.super Lcom/keepassdroid/database/iterator/EntrySearchStringIterator;
.source "EntrySearchStringIteratorV3.java"


# static fields
.field private static final comment:I = 0x3

.field private static final maxEntries:I = 0x4

.field private static final title:I = 0x0

.field private static final url:I = 0x1

.field private static final username:I = 0x2


# instance fields
.field private current:I

.field private entry:Lcom/keepassdroid/database/PwEntryV3;

.field private sp:Lcom/keepassdroid/database/SearchParameters;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/database/PwEntryV3;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/keepassdroid/database/iterator/EntrySearchStringIterator;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->current:I

    .line 33
    iput-object p1, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->entry:Lcom/keepassdroid/database/PwEntryV3;

    .line 34
    sget-object p1, Lcom/keepassdroid/database/SearchParameters;->DEFAULT:Lcom/keepassdroid/database/SearchParameters;

    iput-object p1, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->sp:Lcom/keepassdroid/database/SearchParameters;

    return-void
.end method

.method public constructor <init>(Lcom/keepassdroid/database/PwEntryV3;Lcom/keepassdroid/database/SearchParameters;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/keepassdroid/database/iterator/EntrySearchStringIterator;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->current:I

    .line 38
    iput-object p1, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->entry:Lcom/keepassdroid/database/PwEntryV3;

    .line 39
    iput-object p2, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->sp:Lcom/keepassdroid/database/SearchParameters;

    return-void
.end method

.method private getCurrentString()Ljava/lang/String;
    .locals 2

    .line 102
    iget v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->current:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->entry:Lcom/keepassdroid/database/PwEntryV3;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntryV3;->getNotes()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->entry:Lcom/keepassdroid/database/PwEntryV3;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntryV3;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->entry:Lcom/keepassdroid/database/PwEntryV3;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntryV3;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->entry:Lcom/keepassdroid/database/PwEntryV3;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntryV3;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private useSearchParameters()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->sp:Lcom/keepassdroid/database/SearchParameters;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_6

    .line 76
    iget v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->current:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->sp:Lcom/keepassdroid/database/SearchParameters;

    iget-boolean v0, v0, Lcom/keepassdroid/database/SearchParameters;->searchInNotes:Z

    goto :goto_1

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->sp:Lcom/keepassdroid/database/SearchParameters;

    iget-boolean v0, v0, Lcom/keepassdroid/database/SearchParameters;->searchInUserNames:Z

    goto :goto_1

    .line 82
    :cond_4
    iget-object v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->sp:Lcom/keepassdroid/database/SearchParameters;

    iget-boolean v0, v0, Lcom/keepassdroid/database/SearchParameters;->searchInUrls:Z

    goto :goto_1

    .line 78
    :cond_5
    iget-object v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->sp:Lcom/keepassdroid/database/SearchParameters;

    iget-boolean v0, v0, Lcom/keepassdroid/database/SearchParameters;->searchInTitles:Z

    :goto_1
    if-nez v0, :cond_1

    .line 97
    iget v2, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->current:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->current:I

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 52
    iget v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->current:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .line 58
    iget v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->current:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->useSearchParameters()V

    .line 64
    invoke-direct {p0}, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->getCurrentString()Ljava/lang/String;

    move-result-object v0

    .line 65
    iget v1, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->current:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV3;->current:I

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Past final string"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
