.class Leu/chainfire/lumen/ui/FilterSelectFragment$i;
.super Landroid/widget/SimpleCursorAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/FilterSelectFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Leu/chainfire/lumen/ui/FilterSelectFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[IILandroid/graphics/drawable/Drawable;)V
    .locals 7

    iput-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$i;->b:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iput-object p8, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$i;->a:Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$i;->b:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p3}, Leu/chainfire/lumen/ui/FilterSelectFragment;->n(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result p3

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-direct {p1, p3, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$i;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p3, v0, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-object p2
.end method
