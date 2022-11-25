.class Lcom/keepassdroid/app/App$1;
.super Landroid/content/BroadcastReceiver;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/app/App;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/app/App;


# direct methods
.method constructor <init>(Lcom/keepassdroid/app/App;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/keepassdroid/app/App$1;->this$0:Lcom/keepassdroid/app/App;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.keepassdroid.timeout"

    .line 96
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 97
    iget-object p2, p0, Lcom/keepassdroid/app/App$1;->this$0:Lcom/keepassdroid/app/App;

    invoke-static {p2, p1}, Lcom/keepassdroid/app/App;->access$000(Lcom/keepassdroid/app/App;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
