.class Lcom/keepassdroid/UpdateStatus$UpdateMessage;
.super Ljava/lang/Object;
.source "UpdateStatus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/UpdateStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateMessage"
.end annotation


# instance fields
.field private mResId:I

.field final synthetic this$0:Lcom/keepassdroid/UpdateStatus;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/UpdateStatus;I)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/keepassdroid/UpdateStatus$UpdateMessage;->this$0:Lcom/keepassdroid/UpdateStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p2, p0, Lcom/keepassdroid/UpdateStatus$UpdateMessage;->mResId:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/keepassdroid/UpdateStatus$UpdateMessage;->this$0:Lcom/keepassdroid/UpdateStatus;

    invoke-static {v0}, Lcom/keepassdroid/UpdateStatus;->access$100(Lcom/keepassdroid/UpdateStatus;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/keepassdroid/UpdateStatus$UpdateMessage;->this$0:Lcom/keepassdroid/UpdateStatus;

    invoke-static {v1}, Lcom/keepassdroid/UpdateStatus;->access$000(Lcom/keepassdroid/UpdateStatus;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/keepassdroid/UpdateStatus$UpdateMessage;->mResId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method
