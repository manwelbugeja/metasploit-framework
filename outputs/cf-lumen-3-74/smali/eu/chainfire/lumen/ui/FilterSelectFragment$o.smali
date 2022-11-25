.class Leu/chainfire/lumen/ui/FilterSelectFragment$o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/FilterSelectFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$o;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$o;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1, p3}, Leu/chainfire/lumen/ui/FilterSelectFragment;->q(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$o;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-virtual {p1}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->invalidateViews()V

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$o;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-virtual {p1}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$o;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->B(Leu/chainfire/lumen/ui/FilterSelectFragment;)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$o;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->t(Leu/chainfire/lumen/ui/FilterSelectFragment;)Leu/chainfire/lumen/a$d;

    move-result-object p1

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object p1

    sget-object p2, Leu/chainfire/lumen/a$e;->m:Leu/chainfire/lumen/a$e;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$o;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->u(Leu/chainfire/lumen/ui/FilterSelectFragment;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$o;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->t(Leu/chainfire/lumen/ui/FilterSelectFragment;)Leu/chainfire/lumen/a$d;

    move-result-object p1

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object p1

    sget-object p2, Leu/chainfire/lumen/a$e;->k:Leu/chainfire/lumen/a$e;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$o;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->v(Leu/chainfire/lumen/ui/FilterSelectFragment;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$o;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->t(Leu/chainfire/lumen/ui/FilterSelectFragment;)Leu/chainfire/lumen/a$d;

    move-result-object p1

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object p1

    sget-object p2, Leu/chainfire/lumen/a$e;->n:Leu/chainfire/lumen/a$e;

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$o;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->w(Leu/chainfire/lumen/ui/FilterSelectFragment;)V

    :cond_2
    :goto_0
    return-void
.end method
