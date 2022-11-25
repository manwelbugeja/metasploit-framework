.class public Lcom/keepassdroid/UIToastTask;
.super Ljava/lang/Object;
.source "UIToastTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/keepassdroid/UIToastTask;->mCtx:Landroid/content/Context;

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/UIToastTask;->mText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/keepassdroid/UIToastTask;->mCtx:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/keepassdroid/UIToastTask;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/keepassdroid/UIToastTask;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/keepassdroid/UIToastTask;->mText:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
