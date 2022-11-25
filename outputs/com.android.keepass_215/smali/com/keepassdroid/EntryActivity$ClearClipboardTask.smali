.class Lcom/keepassdroid/EntryActivity$ClearClipboardTask;
.super Ljava/util/TimerTask;
.source "EntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/EntryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearClipboardTask"
.end annotation


# instance fields
.field private final mClearText:Ljava/lang/String;

.field private final mCtx:Landroid/content/Context;

.field final synthetic this$0:Lcom/keepassdroid/EntryActivity;


# direct methods
.method constructor <init>(Lcom/keepassdroid/EntryActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/keepassdroid/EntryActivity$ClearClipboardTask;->this$0:Lcom/keepassdroid/EntryActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 457
    iput-object p3, p0, Lcom/keepassdroid/EntryActivity$ClearClipboardTask;->mClearText:Ljava/lang/String;

    .line 458
    iput-object p2, p0, Lcom/keepassdroid/EntryActivity$ClearClipboardTask;->mCtx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, ""

    .line 463
    iget-object v1, p0, Lcom/keepassdroid/EntryActivity$ClearClipboardTask;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/keepassdroid/utils/Util;->getClipboard(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 465
    iget-object v2, p0, Lcom/keepassdroid/EntryActivity$ClearClipboardTask;->mClearText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    :try_start_0
    iget-object v1, p0, Lcom/keepassdroid/EntryActivity$ClearClipboardTask;->mCtx:Landroid/content/Context;

    invoke-static {v1, v0, v0}, Lcom/keepassdroid/utils/Util;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/keepassdroid/EntryActivity$ClearClipboardTask;->this$0:Lcom/keepassdroid/EntryActivity;

    iget-object v0, v0, Lcom/keepassdroid/EntryActivity;->uiThreadCallback:Landroid/os/Handler;

    new-instance v1, Lcom/keepassdroid/UIToastTask;

    iget-object v2, p0, Lcom/keepassdroid/EntryActivity$ClearClipboardTask;->mCtx:Landroid/content/Context;

    const v3, 0x7f100003

    invoke-direct {v1, v2, v3}, Lcom/keepassdroid/UIToastTask;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/keepassdroid/database/exception/SamsungClipboardException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    :catch_0
    iget-object v0, p0, Lcom/keepassdroid/EntryActivity$ClearClipboardTask;->this$0:Lcom/keepassdroid/EntryActivity;

    iget-object v0, v0, Lcom/keepassdroid/EntryActivity;->uiThreadCallback:Landroid/os/Handler;

    new-instance v1, Lcom/keepassdroid/UIToastTask;

    iget-object v2, p0, Lcom/keepassdroid/EntryActivity$ClearClipboardTask;->mCtx:Landroid/content/Context;

    const v3, 0x7f10004c

    invoke-direct {v1, v2, v3}, Lcom/keepassdroid/UIToastTask;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void
.end method
