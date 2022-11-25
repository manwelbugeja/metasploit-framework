.class Lcom/keepassdroid/EntryActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "EntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/EntryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/EntryActivity;


# direct methods
.method constructor <init>(Lcom/keepassdroid/EntryActivity;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/keepassdroid/EntryActivity$2;->this$0:Lcom/keepassdroid/EntryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 195
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.keepassdroid.copy_username"

    .line 197
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 198
    iget-object p1, p0, Lcom/keepassdroid/EntryActivity$2;->this$0:Lcom/keepassdroid/EntryActivity;

    iget-object p1, p1, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->getUsername()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 200
    iget-object p2, p0, Lcom/keepassdroid/EntryActivity$2;->this$0:Lcom/keepassdroid/EntryActivity;

    const v0, 0x7f1000ab

    invoke-virtual {p2, v0}, Lcom/keepassdroid/EntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/keepassdroid/EntryActivity;->access$000(Lcom/keepassdroid/EntryActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "com.keepassdroid.copy_password"

    .line 202
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 203
    new-instance p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/keepassdroid/EntryActivity$2;->this$0:Lcom/keepassdroid/EntryActivity;

    iget-object p2, p2, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {p2}, Lcom/keepassdroid/database/PwEntry;->getPassword()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 205
    iget-object p1, p0, Lcom/keepassdroid/EntryActivity$2;->this$0:Lcom/keepassdroid/EntryActivity;

    const p2, 0x7f1000a7

    invoke-virtual {p1, p2}, Lcom/keepassdroid/EntryActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/keepassdroid/EntryActivity$2;->this$0:Lcom/keepassdroid/EntryActivity;

    iget-object v1, v1, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    .line 206
    invoke-virtual {v1}, Lcom/keepassdroid/database/PwEntry;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 205
    invoke-static {p1, p2, v0, v1}, Lcom/keepassdroid/EntryActivity;->access$100(Lcom/keepassdroid/EntryActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method
