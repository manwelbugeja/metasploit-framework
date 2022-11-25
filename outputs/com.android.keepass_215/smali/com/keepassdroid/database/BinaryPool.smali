.class public Lcom/keepassdroid/database/BinaryPool;
.super Ljava/lang/Object;
.source "BinaryPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/database/BinaryPool$AddBinaries;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private pool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/keepassdroid/database/security/ProtectedBinary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/BinaryPool;->pool:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/keepassdroid/database/PwGroupV4;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/BinaryPool;->pool:Ljava/util/HashMap;

    .line 38
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/BinaryPool;->build(Lcom/keepassdroid/database/PwGroupV4;)V

    return-void
.end method

.method static synthetic access$000(Lcom/keepassdroid/database/BinaryPool;Ljava/util/Map;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/BinaryPool;->poolAdd(Ljava/util/Map;)V

    return-void
.end method

.method private build(Lcom/keepassdroid/database/PwGroupV4;)V
    .locals 2

    .line 110
    new-instance v0, Lcom/keepassdroid/database/BinaryPool$AddBinaries;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keepassdroid/database/BinaryPool$AddBinaries;-><init>(Lcom/keepassdroid/database/BinaryPool;Lcom/keepassdroid/database/BinaryPool$1;)V

    .line 111
    invoke-virtual {p1, v1, v0}, Lcom/keepassdroid/database/PwGroupV4;->preOrderTraverseTree(Lcom/keepassdroid/database/GroupHandler;Lcom/keepassdroid/database/EntryHandler;)Z

    return-void
.end method

.method private poolAdd(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/keepassdroid/database/security/ProtectedBinary;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/security/ProtectedBinary;

    .line 81
    invoke-virtual {p0, v0}, Lcom/keepassdroid/database/BinaryPool;->poolAdd(Lcom/keepassdroid/database/security/ProtectedBinary;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public binaries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/keepassdroid/database/security/ProtectedBinary;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/keepassdroid/database/BinaryPool;->pool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/keepassdroid/database/BinaryPool;->pool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keepassdroid/database/security/ProtectedBinary;

    invoke-virtual {v1}, Lcom/keepassdroid/database/security/ProtectedBinary;->clear()V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/BinaryPool;->pool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lcom/keepassdroid/database/security/ProtectedBinary;",
            ">;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/keepassdroid/database/BinaryPool;->pool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public findUnusedKey()I
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/keepassdroid/database/BinaryPool;->pool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 96
    :goto_0
    invoke-virtual {p0, v0}, Lcom/keepassdroid/database/BinaryPool;->get(I)Lcom/keepassdroid/database/security/ProtectedBinary;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public get(I)Lcom/keepassdroid/database/security/ProtectedBinary;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/keepassdroid/database/BinaryPool;->pool:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/database/security/ProtectedBinary;

    return-object p1
.end method

.method public poolAdd(Lcom/keepassdroid/database/security/ProtectedBinary;)V
    .locals 2

    .line 89
    invoke-virtual {p0, p1}, Lcom/keepassdroid/database/BinaryPool;->poolFind(Lcom/keepassdroid/database/security/ProtectedBinary;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/BinaryPool;->pool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public poolFind(Lcom/keepassdroid/database/security/ProtectedBinary;)I
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/keepassdroid/database/BinaryPool;->pool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keepassdroid/database/security/ProtectedBinary;

    invoke-virtual {v2, p1}, Lcom/keepassdroid/database/security/ProtectedBinary;->equals(Lcom/keepassdroid/database/security/ProtectedBinary;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public put(ILcom/keepassdroid/database/security/ProtectedBinary;)Lcom/keepassdroid/database/security/ProtectedBinary;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/keepassdroid/database/BinaryPool;->pool:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/database/security/ProtectedBinary;

    return-object p1
.end method
