.class final Leu/chainfire/lumen/ui/a$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/a;->f(Landroid/content/Context;[Ljava/lang/String;IILjava/lang/Runnable;ILjava/lang/Runnable;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[Landroid/app/AlertDialog;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>([Landroid/app/AlertDialog;[Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/a$g;->a:[Landroid/app/AlertDialog;

    iput-object p2, p0, Leu/chainfire/lumen/ui/a$g;->b:[Ljava/lang/String;

    iput-object p3, p0, Leu/chainfire/lumen/ui/a$g;->c:Landroid/widget/EditText;

    iput-object p4, p0, Leu/chainfire/lumen/ui/a$g;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_2

    const/16 p1, 0x42

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Leu/chainfire/lumen/ui/a$g;->a:[Landroid/app/AlertDialog;

    aget-object p2, p1, p3

    if-eqz p2, :cond_0

    aget-object p1, p1, p3

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Leu/chainfire/lumen/ui/a$g;->b:[Ljava/lang/String;

    iget-object p2, p0, Leu/chainfire/lumen/ui/a$g;->c:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p3

    iget-object p1, p0, Leu/chainfire/lumen/ui/a$g;->d:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return p3
.end method
