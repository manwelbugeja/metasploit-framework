.class Leu/chainfire/lumen/ui/FilterSelectFragment$v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/FilterSelectFragment;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Leu/chainfire/lumen/ui/FilterSelectFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/FilterSelectFragment;I)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$v;->b:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iput p2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$v;->b:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$v;->a:I

    invoke-static {p1, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->E(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$v;->b:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->B(Leu/chainfire/lumen/ui/FilterSelectFragment;)V

    return-void
.end method
