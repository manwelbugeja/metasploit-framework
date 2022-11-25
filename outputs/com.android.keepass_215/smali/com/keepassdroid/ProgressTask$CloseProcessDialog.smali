.class Lcom/keepassdroid/ProgressTask$CloseProcessDialog;
.super Ljava/lang/Object;
.source "ProgressTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/ProgressTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseProcessDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/ProgressTask;


# direct methods
.method private constructor <init>(Lcom/keepassdroid/ProgressTask;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/keepassdroid/ProgressTask$CloseProcessDialog;->this$0:Lcom/keepassdroid/ProgressTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keepassdroid/ProgressTask;Lcom/keepassdroid/ProgressTask$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/keepassdroid/ProgressTask$CloseProcessDialog;-><init>(Lcom/keepassdroid/ProgressTask;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/keepassdroid/ProgressTask$CloseProcessDialog;->this$0:Lcom/keepassdroid/ProgressTask;

    invoke-static {v0}, Lcom/keepassdroid/ProgressTask;->access$100(Lcom/keepassdroid/ProgressTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 94
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 95
    iget-object v0, p0, Lcom/keepassdroid/ProgressTask$CloseProcessDialog;->this$0:Lcom/keepassdroid/ProgressTask;

    invoke-static {v0}, Lcom/keepassdroid/ProgressTask;->access$200(Lcom/keepassdroid/ProgressTask;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/keepassdroid/ProgressTask$CloseProcessDialog;->this$0:Lcom/keepassdroid/ProgressTask;

    invoke-static {v1}, Lcom/keepassdroid/ProgressTask;->access$100(Lcom/keepassdroid/ProgressTask;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/keepassdroid/ProgressTask$CloseProcessDialog;->this$0:Lcom/keepassdroid/ProgressTask;

    invoke-static {v1}, Lcom/keepassdroid/ProgressTask;->access$100(Lcom/keepassdroid/ProgressTask;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/keepassdroid/ProgressTask$CloseProcessDialog;->this$0:Lcom/keepassdroid/ProgressTask;

    invoke-static {v0}, Lcom/keepassdroid/ProgressTask;->access$100(Lcom/keepassdroid/ProgressTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    return-void
.end method
