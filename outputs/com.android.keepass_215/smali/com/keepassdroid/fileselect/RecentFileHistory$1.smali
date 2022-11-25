.class Lcom/keepassdroid/fileselect/RecentFileHistory$1;
.super Ljava/lang/Object;
.source "RecentFileHistory.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/fileselect/RecentFileHistory;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/fileselect/RecentFileHistory;


# direct methods
.method constructor <init>(Lcom/keepassdroid/fileselect/RecentFileHistory;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/keepassdroid/fileselect/RecentFileHistory$1;->this$0:Lcom/keepassdroid/fileselect/RecentFileHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory$1;->this$0:Lcom/keepassdroid/fileselect/RecentFileHistory;

    invoke-static {v0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->access$000(Lcom/keepassdroid/fileselect/RecentFileHistory;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100139

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 61
    iget-object p2, p0, Lcom/keepassdroid/fileselect/RecentFileHistory$1;->this$0:Lcom/keepassdroid/fileselect/RecentFileHistory;

    invoke-static {p2}, Lcom/keepassdroid/fileselect/RecentFileHistory;->access$000(Lcom/keepassdroid/fileselect/RecentFileHistory;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keepassdroid/fileselect/RecentFileHistory$1;->this$0:Lcom/keepassdroid/fileselect/RecentFileHistory;

    invoke-static {v1}, Lcom/keepassdroid/fileselect/RecentFileHistory;->access$000(Lcom/keepassdroid/fileselect/RecentFileHistory;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/keepassdroid/fileselect/RecentFileHistory;->access$102(Lcom/keepassdroid/fileselect/RecentFileHistory;Z)Z

    :cond_0
    return-void
.end method
