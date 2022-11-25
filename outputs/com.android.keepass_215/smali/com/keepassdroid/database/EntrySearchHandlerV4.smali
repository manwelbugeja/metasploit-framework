.class public Lcom/keepassdroid/database/EntrySearchHandlerV4;
.super Lcom/keepassdroid/database/EntrySearchHandler;
.source "EntrySearchHandlerV4.java"


# instance fields
.field private sp:Lcom/keepassdroid/database/SearchParametersV4;


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

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/database/EntrySearchHandler;-><init>(Lcom/keepassdroid/database/SearchParameters;Ljava/util/List;)V

    .line 33
    check-cast p1, Lcom/keepassdroid/database/SearchParametersV4;

    iput-object p1, p0, Lcom/keepassdroid/database/EntrySearchHandlerV4;->sp:Lcom/keepassdroid/database/SearchParametersV4;

    return-void
.end method


# virtual methods
.method protected searchID(Lcom/keepassdroid/database/PwEntry;)Z
    .locals 3

    .line 38
    check-cast p1, Lcom/keepassdroid/database/PwEntryV4;

    .line 39
    iget-object v0, p0, Lcom/keepassdroid/database/EntrySearchHandlerV4;->sp:Lcom/keepassdroid/database/SearchParametersV4;

    iget-boolean v0, v0, Lcom/keepassdroid/database/SearchParametersV4;->searchInUUIDs:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 40
    iget-object p1, p1, Lcom/keepassdroid/database/PwEntryV4;->uuid:Ljava/util/UUID;

    invoke-static {p1}, Lcom/keepassdroid/utils/UuidUtil;->toHexString(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/keepassdroid/database/EntrySearchHandlerV4;->sp:Lcom/keepassdroid/database/SearchParametersV4;

    iget-object v0, v0, Lcom/keepassdroid/database/SearchParametersV4;->searchString:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1, v0, v2}, Lcom/keepassdroid/utils/StrUtil;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
