.class public Lcom/keepassdroid/database/PwIconFactory;
.super Ljava/lang/Object;
.source "PwIconFactory.java"


# instance fields
.field private cache:Lorg/apache/commons/collections/map/ReferenceMap;

.field private customCache:Lorg/apache/commons/collections/map/ReferenceMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/apache/commons/collections/map/ReferenceMap;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/map/ReferenceMap;-><init>(II)V

    iput-object v0, p0, Lcom/keepassdroid/database/PwIconFactory;->cache:Lorg/apache/commons/collections/map/ReferenceMap;

    .line 38
    new-instance v0, Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/map/ReferenceMap;-><init>(II)V

    iput-object v0, p0, Lcom/keepassdroid/database/PwIconFactory;->customCache:Lorg/apache/commons/collections/map/ReferenceMap;

    return-void
.end method


# virtual methods
.method public getIcon(Ljava/util/UUID;)Lcom/keepassdroid/database/PwIconCustom;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/keepassdroid/database/PwIconFactory;->customCache:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/ReferenceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwIconCustom;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/keepassdroid/database/PwIconCustom;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/keepassdroid/database/PwIconCustom;-><init>(Ljava/util/UUID;[B)V

    .line 61
    iget-object v1, p0, Lcom/keepassdroid/database/PwIconFactory;->customCache:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-virtual {v1, p1, v0}, Lorg/apache/commons/collections/map/ReferenceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getIcon(Ljava/util/UUID;[B)Lcom/keepassdroid/database/PwIconCustom;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/keepassdroid/database/PwIconFactory;->customCache:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/ReferenceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwIconCustom;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/keepassdroid/database/PwIconCustom;

    invoke-direct {v0, p1, p2}, Lcom/keepassdroid/database/PwIconCustom;-><init>(Ljava/util/UUID;[B)V

    .line 72
    iget-object p2, p0, Lcom/keepassdroid/database/PwIconFactory;->customCache:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-virtual {p2, p1, v0}, Lorg/apache/commons/collections/map/ReferenceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_0
    iput-object p2, v0, Lcom/keepassdroid/database/PwIconCustom;->imageData:[B

    :goto_0
    return-object v0
.end method

.method public getIcon(I)Lcom/keepassdroid/database/PwIconStandard;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/keepassdroid/database/PwIconFactory;->cache:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/ReferenceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwIconStandard;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 45
    sget-object v0, Lcom/keepassdroid/database/PwIconStandard;->FIRST:Lcom/keepassdroid/database/PwIconStandard;

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Lcom/keepassdroid/database/PwIconStandard;

    invoke-direct {v0, p1}, Lcom/keepassdroid/database/PwIconStandard;-><init>(I)V

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/keepassdroid/database/PwIconFactory;->cache:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lorg/apache/commons/collections/map/ReferenceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public put(Lcom/keepassdroid/database/PwIconCustom;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/keepassdroid/database/PwIconFactory;->customCache:Lorg/apache/commons/collections/map/ReferenceMap;

    iget-object v1, p1, Lcom/keepassdroid/database/PwIconCustom;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections/map/ReferenceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIconData(Ljava/util/UUID;[B)V
    .locals 0

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/keepassdroid/database/PwIconFactory;->getIcon(Ljava/util/UUID;[B)Lcom/keepassdroid/database/PwIconCustom;

    return-void
.end method
