.class Leu/chainfire/lumen/ui/FilterSelectFragment$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/FilterSelectFragment;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/ui/FilterSelectFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/FilterSelectFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$c;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$c;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->C(Leu/chainfire/lumen/ui/FilterSelectFragment;)Leu/chainfire/lumen/a;

    move-result-object p1

    iget-object p1, p1, Leu/chainfire/lumen/a;->s:Leu/chainfire/lumen/a$f;

    new-instance v0, Leu/chainfire/lumen/a$d;

    iget-object v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$c;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->b(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v1

    iget-object v2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$c;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v2}, Leu/chainfire/lumen/ui/FilterSelectFragment;->d(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v2

    iget-object v3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$c;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v3}, Leu/chainfire/lumen/ui/FilterSelectFragment;->f(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Leu/chainfire/lumen/a$d;-><init>(III)V

    invoke-virtual {p1, v0}, Leu/chainfire/lumen/a$f;->d(Leu/chainfire/lumen/a$d;)V

    return-void
.end method
