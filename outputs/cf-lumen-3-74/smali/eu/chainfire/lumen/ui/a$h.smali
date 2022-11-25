.class final Leu/chainfire/lumen/ui/a$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/a;->f(Landroid/content/Context;[Ljava/lang/String;IILjava/lang/Runnable;ILjava/lang/Runnable;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/a$h;->a:[Ljava/lang/String;

    iput-object p2, p0, Leu/chainfire/lumen/ui/a$h;->b:Landroid/widget/EditText;

    iput-object p3, p0, Leu/chainfire/lumen/ui/a$h;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Leu/chainfire/lumen/ui/a$h;->a:[Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/lumen/ui/a$h;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object p1, p0, Leu/chainfire/lumen/ui/a$h;->c:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
