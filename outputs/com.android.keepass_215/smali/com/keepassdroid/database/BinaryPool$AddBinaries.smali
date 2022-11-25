.class Lcom/keepassdroid/database/BinaryPool$AddBinaries;
.super Lcom/keepassdroid/database/EntryHandler;
.source "BinaryPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/database/BinaryPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddBinaries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keepassdroid/database/EntryHandler<",
        "Lcom/keepassdroid/database/PwEntryV4;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/database/BinaryPool;


# direct methods
.method private constructor <init>(Lcom/keepassdroid/database/BinaryPool;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/keepassdroid/database/BinaryPool$AddBinaries;->this$0:Lcom/keepassdroid/database/BinaryPool;

    invoke-direct {p0}, Lcom/keepassdroid/database/EntryHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keepassdroid/database/BinaryPool;Lcom/keepassdroid/database/BinaryPool$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/BinaryPool$AddBinaries;-><init>(Lcom/keepassdroid/database/BinaryPool;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic operate(Lcom/keepassdroid/database/PwEntry;)Z
    .locals 0

    .line 64
    check-cast p1, Lcom/keepassdroid/database/PwEntryV4;

    invoke-virtual {p0, p1}, Lcom/keepassdroid/database/BinaryPool$AddBinaries;->operate(Lcom/keepassdroid/database/PwEntryV4;)Z

    move-result p1

    return p1
.end method

.method public operate(Lcom/keepassdroid/database/PwEntryV4;)Z
    .locals 3

    .line 68
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keepassdroid/database/PwEntryV4;

    .line 69
    iget-object v2, p0, Lcom/keepassdroid/database/BinaryPool$AddBinaries;->this$0:Lcom/keepassdroid/database/BinaryPool;

    iget-object v1, v1, Lcom/keepassdroid/database/PwEntryV4;->binaries:Ljava/util/HashMap;

    invoke-static {v2, v1}, Lcom/keepassdroid/database/BinaryPool;->access$000(Lcom/keepassdroid/database/BinaryPool;Ljava/util/Map;)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/BinaryPool$AddBinaries;->this$0:Lcom/keepassdroid/database/BinaryPool;

    iget-object p1, p1, Lcom/keepassdroid/database/PwEntryV4;->binaries:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/keepassdroid/database/BinaryPool;->access$000(Lcom/keepassdroid/database/BinaryPool;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method
