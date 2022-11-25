.class public Lcom/keepassdroid/database/PwCustomData;
.super Ljava/util/HashMap;
.source "PwCustomData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public lastMod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwCustomData;->lastMod:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getLastMod(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/keepassdroid/database/PwCustomData;->lastMod:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/keepassdroid/database/PwCustomData;->lastMod:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/keepassdroid/database/PwCustomData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
