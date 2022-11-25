.class Lcom/keepassdroid/EntryEditActivity$3;
.super Ljava/lang/Object;
.source "EntryEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/EntryEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/EntryEditActivity;


# direct methods
.method constructor <init>(Lcom/keepassdroid/EntryEditActivity;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/keepassdroid/EntryEditActivity$3;->this$0:Lcom/keepassdroid/EntryEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 178
    iget-object p1, p0, Lcom/keepassdroid/EntryEditActivity$3;->this$0:Lcom/keepassdroid/EntryEditActivity;

    .line 180
    invoke-virtual {p1}, Lcom/keepassdroid/EntryEditActivity;->validateBeforeSaving()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/EntryEditActivity$3;->this$0:Lcom/keepassdroid/EntryEditActivity;

    invoke-virtual {v0}, Lcom/keepassdroid/EntryEditActivity;->populateNewEntry()Lcom/keepassdroid/database/PwEntry;

    move-result-object v5

    .line 186
    invoke-virtual {v5}, Lcom/keepassdroid/database/PwEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keepassdroid/EntryEditActivity$3;->this$0:Lcom/keepassdroid/EntryEditActivity;

    iget-object v1, v1, Lcom/keepassdroid/EntryEditActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/keepassdroid/EntryEditActivity$3;->this$0:Lcom/keepassdroid/EntryEditActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/keepassdroid/EntryEditActivity;->setResult(I)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/keepassdroid/EntryEditActivity$3;->this$0:Lcom/keepassdroid/EntryEditActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/keepassdroid/EntryEditActivity;->setResult(I)V

    .line 193
    :goto_0
    new-instance v6, Lcom/keepassdroid/EntryEditActivity$AfterSave;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p1, v0}, Lcom/keepassdroid/EntryEditActivity$AfterSave;-><init>(Lcom/keepassdroid/EntryEditActivity;Landroid/os/Handler;)V

    .line 195
    iget-object v0, p0, Lcom/keepassdroid/EntryEditActivity$3;->this$0:Lcom/keepassdroid/EntryEditActivity;

    iget-boolean v0, v0, Lcom/keepassdroid/EntryEditActivity;->mIsNew:Z

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/keepassdroid/EntryEditActivity$3;->this$0:Lcom/keepassdroid/EntryEditActivity;

    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v1

    invoke-static {v0, v1, v5, v6}, Lcom/keepassdroid/database/edit/AddEntry;->getInstance(Landroid/content/Context;Lcom/keepassdroid/Database;Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/edit/OnFinish;)Lcom/keepassdroid/database/edit/AddEntry;

    move-result-object v0

    goto :goto_1

    .line 198
    :cond_2
    new-instance v0, Lcom/keepassdroid/database/edit/UpdateEntry;

    iget-object v2, p0, Lcom/keepassdroid/EntryEditActivity$3;->this$0:Lcom/keepassdroid/EntryEditActivity;

    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v3

    iget-object v1, p0, Lcom/keepassdroid/EntryEditActivity$3;->this$0:Lcom/keepassdroid/EntryEditActivity;

    iget-object v4, v1, Lcom/keepassdroid/EntryEditActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/keepassdroid/database/edit/UpdateEntry;-><init>(Landroid/content/Context;Lcom/keepassdroid/Database;Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/edit/OnFinish;)V

    .line 200
    :goto_1
    new-instance v1, Lcom/keepassdroid/ProgressTask;

    const v2, 0x7f100149

    invoke-direct {v1, p1, v0, v2}, Lcom/keepassdroid/ProgressTask;-><init>(Landroid/app/Activity;Lcom/keepassdroid/database/edit/RunnableOnFinish;I)V

    .line 201
    invoke-virtual {v1}, Lcom/keepassdroid/ProgressTask;->run()V

    return-void
.end method
