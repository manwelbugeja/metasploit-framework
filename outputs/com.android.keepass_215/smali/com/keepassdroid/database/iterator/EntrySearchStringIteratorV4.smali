.class public Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;
.super Lcom/keepassdroid/database/iterator/EntrySearchStringIterator;
.source "EntrySearchStringIteratorV4.java"


# instance fields
.field private current:Ljava/lang/String;

.field private setIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/keepassdroid/database/security/ProtectedString;",
            ">;>;"
        }
    .end annotation
.end field

.field private sp:Lcom/keepassdroid/database/SearchParametersV4;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/database/PwEntryV4;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/keepassdroid/database/iterator/EntrySearchStringIterator;-><init>()V

    .line 37
    sget-object v0, Lcom/keepassdroid/database/SearchParametersV4;->DEFAULT:Lcom/keepassdroid/database/SearchParametersV4;

    iput-object v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->sp:Lcom/keepassdroid/database/SearchParametersV4;

    .line 38
    iget-object p1, p1, Lcom/keepassdroid/database/PwEntryV4;->strings:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->setIterator:Ljava/util/Iterator;

    .line 39
    invoke-direct {p0}, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->advance()V

    return-void
.end method

.method public constructor <init>(Lcom/keepassdroid/database/PwEntryV4;Lcom/keepassdroid/database/SearchParametersV4;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/keepassdroid/database/iterator/EntrySearchStringIterator;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->sp:Lcom/keepassdroid/database/SearchParametersV4;

    .line 45
    iget-object p1, p1, Lcom/keepassdroid/database/PwEntryV4;->strings:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->setIterator:Ljava/util/Iterator;

    .line 46
    invoke-direct {p0}, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->advance()V

    return-void
.end method

.method private advance()V
    .locals 2

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->setIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->setIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    invoke-direct {p0, v1}, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->searchInField(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/security/ProtectedString;

    invoke-virtual {v0}, Lcom/keepassdroid/database/security/ProtectedString;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->current:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->current:Ljava/lang/String;

    return-void
.end method

.method private searchInField(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Title"

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object p1, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->sp:Lcom/keepassdroid/database/SearchParametersV4;

    iget-boolean p1, p1, Lcom/keepassdroid/database/SearchParametersV4;->searchInTitles:Z

    return p1

    :cond_0
    const-string v0, "UserName"

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object p1, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->sp:Lcom/keepassdroid/database/SearchParametersV4;

    iget-boolean p1, p1, Lcom/keepassdroid/database/SearchParametersV4;->searchInUserNames:Z

    return p1

    :cond_1
    const-string v0, "Password"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object p1, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->sp:Lcom/keepassdroid/database/SearchParametersV4;

    iget-boolean p1, p1, Lcom/keepassdroid/database/SearchParametersV4;->searchInPasswords:Z

    return p1

    :cond_2
    const-string v0, "URL"

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    iget-object p1, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->sp:Lcom/keepassdroid/database/SearchParametersV4;

    iget-boolean p1, p1, Lcom/keepassdroid/database/SearchParametersV4;->searchInUrls:Z

    return p1

    :cond_3
    const-string v0, "Notes"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 91
    iget-object p1, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->sp:Lcom/keepassdroid/database/SearchParametersV4;

    iget-boolean p1, p1, Lcom/keepassdroid/database/SearchParametersV4;->searchInNotes:Z

    return p1

    .line 93
    :cond_4
    iget-object p1, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->sp:Lcom/keepassdroid/database/SearchParametersV4;

    iget-boolean p1, p1, Lcom/keepassdroid/database/SearchParametersV4;->searchInOther:Z

    return p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->current:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->current:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/keepassdroid/database/iterator/EntrySearchStringIteratorV4;->advance()V

    return-object v0

    .line 57
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Past the end of the list."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
