.class Lcom/keepassdroid/database/save/PwDbV4Output$EntryWriter;
.super Lcom/keepassdroid/database/EntryHandler;
.source "PwDbV4Output.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/database/save/PwDbV4Output;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keepassdroid/database/EntryHandler<",
        "Lcom/keepassdroid/database/PwEntry;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/database/save/PwDbV4Output;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 268
    const-class v0, Lcom/keepassdroid/database/save/PwDbV4Output;

    return-void
.end method

.method private constructor <init>(Lcom/keepassdroid/database/save/PwDbV4Output;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output$EntryWriter;->this$0:Lcom/keepassdroid/database/save/PwDbV4Output;

    invoke-direct {p0}, Lcom/keepassdroid/database/EntryHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keepassdroid/database/save/PwDbV4Output;Lcom/keepassdroid/database/save/PwDbV4Output$1;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/save/PwDbV4Output$EntryWriter;-><init>(Lcom/keepassdroid/database/save/PwDbV4Output;)V

    return-void
.end method


# virtual methods
.method public operate(Lcom/keepassdroid/database/PwEntry;)Z
    .locals 2

    .line 272
    check-cast p1, Lcom/keepassdroid/database/PwEntryV4;

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output$EntryWriter;->this$0:Lcom/keepassdroid/database/save/PwDbV4Output;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/keepassdroid/database/save/PwDbV4Output;->access$200(Lcom/keepassdroid/database/save/PwDbV4Output;Lcom/keepassdroid/database/PwEntryV4;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 278
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
