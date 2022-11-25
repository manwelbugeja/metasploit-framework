.class Lcom/keepassdroid/database/save/PwDbV4Output$GroupWriter;
.super Lcom/keepassdroid/database/GroupHandler;
.source "PwDbV4Output.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/database/save/PwDbV4Output;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keepassdroid/database/GroupHandler<",
        "Lcom/keepassdroid/database/PwGroup;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private groupStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/keepassdroid/database/PwGroupV4;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/keepassdroid/database/save/PwDbV4Output;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 236
    const-class v0, Lcom/keepassdroid/database/save/PwDbV4Output;

    return-void
.end method

.method public constructor <init>(Lcom/keepassdroid/database/save/PwDbV4Output;Ljava/util/Stack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/keepassdroid/database/PwGroupV4;",
            ">;)V"
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output$GroupWriter;->this$0:Lcom/keepassdroid/database/save/PwDbV4Output;

    invoke-direct {p0}, Lcom/keepassdroid/database/GroupHandler;-><init>()V

    .line 240
    iput-object p2, p0, Lcom/keepassdroid/database/save/PwDbV4Output$GroupWriter;->groupStack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public operate(Lcom/keepassdroid/database/PwGroup;)Z
    .locals 2

    .line 245
    check-cast p1, Lcom/keepassdroid/database/PwGroupV4;

    .line 250
    :goto_0
    :try_start_0
    iget-object v0, p1, Lcom/keepassdroid/database/PwGroupV4;->parent:Lcom/keepassdroid/database/PwGroupV4;

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbV4Output$GroupWriter;->groupStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output$GroupWriter;->groupStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output$GroupWriter;->this$0:Lcom/keepassdroid/database/save/PwDbV4Output;

    invoke-static {v0, p1}, Lcom/keepassdroid/database/save/PwDbV4Output;->access$000(Lcom/keepassdroid/database/save/PwDbV4Output;Lcom/keepassdroid/database/PwGroupV4;)V

    const/4 p1, 0x1

    return p1

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output$GroupWriter;->groupStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output$GroupWriter;->groupStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output$GroupWriter;->this$0:Lcom/keepassdroid/database/save/PwDbV4Output;

    invoke-static {v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->access$100(Lcom/keepassdroid/database/save/PwDbV4Output;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 260
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public bridge synthetic operate(Ljava/lang/Object;)Z
    .locals 0

    .line 236
    check-cast p1, Lcom/keepassdroid/database/PwGroup;

    invoke-virtual {p0, p1}, Lcom/keepassdroid/database/save/PwDbV4Output$GroupWriter;->operate(Lcom/keepassdroid/database/PwGroup;)Z

    move-result p1

    return p1
.end method
