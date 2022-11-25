.class final Lcom/keepassdroid/EntryEditActivity$AfterSave;
.super Lcom/keepassdroid/database/edit/OnFinish;
.source "EntryEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/EntryEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AfterSave"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/EntryEditActivity;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/EntryEditActivity;Landroid/os/Handler;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/keepassdroid/EntryEditActivity$AfterSave;->this$0:Lcom/keepassdroid/EntryEditActivity;

    .line 385
    invoke-direct {p0, p2}, Lcom/keepassdroid/database/edit/OnFinish;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 390
    iget-boolean v0, p0, Lcom/keepassdroid/EntryEditActivity$AfterSave;->mSuccess:Z

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/keepassdroid/EntryEditActivity$AfterSave;->this$0:Lcom/keepassdroid/EntryEditActivity;

    invoke-virtual {v0}, Lcom/keepassdroid/EntryEditActivity;->finish()V

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/EntryEditActivity$AfterSave;->this$0:Lcom/keepassdroid/EntryEditActivity;

    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryEditActivity$AfterSave;->displayMessage(Landroidx/appcompat/app/AppCompatActivity;)V

    :goto_0
    return-void
.end method
