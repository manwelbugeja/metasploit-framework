.class Leu/chainfire/lumen/ui/FilterSelectFragment$u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/FilterSelectFragment;->P()V
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

    iput-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$u;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    new-instance p1, Leu/chainfire/lumen/a$d;

    sget-object v0, Leu/chainfire/lumen/a$e;->k:Leu/chainfire/lumen/a$e;

    invoke-direct {p1, v0}, Leu/chainfire/lumen/a$d;-><init>(Leu/chainfire/lumen/a$e;)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$u;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->D(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Leu/chainfire/lumen/a$d;->t(I)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$u;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->C(Leu/chainfire/lumen/ui/FilterSelectFragment;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->t:Leu/chainfire/lumen/a$f;

    invoke-virtual {v0, p1}, Leu/chainfire/lumen/a$f;->d(Leu/chainfire/lumen/a$d;)V

    return-void
.end method
