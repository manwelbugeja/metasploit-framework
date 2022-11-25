.class Leu/chainfire/lumen/ui/SettingsFragment$e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/SettingsFragment;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Landroid/widget/SeekBar;

.field final synthetic b:[I

.field final synthetic c:[Landroid/widget/TextView;

.field final synthetic d:[I

.field final synthetic e:[I

.field final synthetic f:Leu/chainfire/lumen/ui/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment;[Landroid/widget/SeekBar;[I[Landroid/widget/TextView;[I[I)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->f:Leu/chainfire/lumen/ui/SettingsFragment;

    iput-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->a:[Landroid/widget/SeekBar;

    iput-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->b:[I

    iput-object p4, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->c:[Landroid/widget/TextView;

    iput-object p5, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->d:[I

    iput-object p6, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->e:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    if-eqz p3, :cond_3

    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->a:[Landroid/widget/SeekBar;

    const/4 v0, 0x0

    aget-object p3, p3, v0

    if-ne p1, p3, :cond_0

    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->f:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p3}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object p3

    iget-object p3, p3, Leu/chainfire/lumen/a;->I:Leu/chainfire/lumen/a$h;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->f:Leu/chainfire/lumen/ui/SettingsFragment;

    iget-object v2, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->b:[I

    invoke-static {v1, p2, v2}, Leu/chainfire/lumen/ui/SettingsFragment;->m(Leu/chainfire/lumen/ui/SettingsFragment;I[I)I

    move-result v1

    invoke-virtual {p3, v1}, Leu/chainfire/lumen/a$h;->d(I)V

    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->c:[Landroid/widget/TextView;

    aget-object p3, p3, v0

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->f:Leu/chainfire/lumen/ui/SettingsFragment;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->b:[I

    invoke-static {v0, p2, v1}, Leu/chainfire/lumen/ui/SettingsFragment;->n(Leu/chainfire/lumen/ui/SettingsFragment;I[I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->a:[Landroid/widget/SeekBar;

    const/4 v0, 0x1

    aget-object p3, p3, v0

    if-ne p1, p3, :cond_1

    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->f:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p3}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object p3

    iget-object p3, p3, Leu/chainfire/lumen/a;->J:Leu/chainfire/lumen/a$h;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->f:Leu/chainfire/lumen/ui/SettingsFragment;

    iget-object v2, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->b:[I

    invoke-static {v1, p2, v2}, Leu/chainfire/lumen/ui/SettingsFragment;->m(Leu/chainfire/lumen/ui/SettingsFragment;I[I)I

    move-result v1

    invoke-virtual {p3, v1}, Leu/chainfire/lumen/a$h;->d(I)V

    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->c:[Landroid/widget/TextView;

    aget-object p3, p3, v0

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->f:Leu/chainfire/lumen/ui/SettingsFragment;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->b:[I

    invoke-static {v0, p2, v1}, Leu/chainfire/lumen/ui/SettingsFragment;->n(Leu/chainfire/lumen/ui/SettingsFragment;I[I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->a:[Landroid/widget/SeekBar;

    const/4 v0, 0x2

    aget-object p3, p3, v0

    if-ne p1, p3, :cond_2

    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->f:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p3}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object p3

    iget-object p3, p3, Leu/chainfire/lumen/a;->K:Leu/chainfire/lumen/a$h;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->f:Leu/chainfire/lumen/ui/SettingsFragment;

    iget-object v2, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->d:[I

    invoke-static {v1, p2, v2}, Leu/chainfire/lumen/ui/SettingsFragment;->m(Leu/chainfire/lumen/ui/SettingsFragment;I[I)I

    move-result v1

    invoke-virtual {p3, v1}, Leu/chainfire/lumen/a$h;->d(I)V

    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->c:[Landroid/widget/TextView;

    aget-object p3, p3, v0

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->f:Leu/chainfire/lumen/ui/SettingsFragment;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->d:[I

    invoke-static {v0, p2, v1}, Leu/chainfire/lumen/ui/SettingsFragment;->n(Leu/chainfire/lumen/ui/SettingsFragment;I[I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->a:[Landroid/widget/SeekBar;

    const/4 v0, 0x3

    aget-object p3, p3, v0

    if-ne p1, p3, :cond_3

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->f:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object p1

    iget-object p1, p1, Leu/chainfire/lumen/a;->L:Leu/chainfire/lumen/a$h;

    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->f:Leu/chainfire/lumen/ui/SettingsFragment;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->e:[I

    invoke-static {p3, p2, v1}, Leu/chainfire/lumen/ui/SettingsFragment;->m(Leu/chainfire/lumen/ui/SettingsFragment;I[I)I

    move-result p3

    invoke-virtual {p1, p3}, Leu/chainfire/lumen/a$h;->d(I)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->c:[Landroid/widget/TextView;

    aget-object p1, p1, v0

    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->f:Leu/chainfire/lumen/ui/SettingsFragment;

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$e0;->e:[I

    invoke-static {p3, p2, v0}, Leu/chainfire/lumen/ui/SettingsFragment;->n(Leu/chainfire/lumen/ui/SettingsFragment;I[I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
