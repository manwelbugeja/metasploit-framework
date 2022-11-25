.class Leu/chainfire/lumen/ui/FilterSelectFragment$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/FilterSelectFragment;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Leu/chainfire/lumen/ui/FilterSelectFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/FilterSelectFragment;III)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$d;->d:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iput p2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$d;->a:I

    iput p3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$d;->b:I

    iput p4, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$d;->d:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$d;->a:I

    invoke-static {p1, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->c(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$d;->d:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$d;->b:I

    invoke-static {p1, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->e(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$d;->d:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$d;->c:I

    invoke-static {p1, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->g(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$d;->d:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->B(Leu/chainfire/lumen/ui/FilterSelectFragment;)V

    return-void
.end method
