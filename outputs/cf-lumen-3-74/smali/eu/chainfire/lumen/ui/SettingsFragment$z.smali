.class Leu/chainfire/lumen/ui/SettingsFragment$z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/SettingsFragment;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Landroid/widget/SeekBar;

.field final synthetic b:[Landroid/widget/TextView;

.field final synthetic c:Leu/chainfire/lumen/ui/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment;[Landroid/widget/SeekBar;[Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$z;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    iput-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$z;->a:[Landroid/widget/SeekBar;

    iput-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$z;->b:[Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    if-eqz p3, :cond_2

    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$z;->a:[Landroid/widget/SeekBar;

    const/4 v0, 0x1

    aget-object p3, p3, v0

    if-ne p1, p3, :cond_0

    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$z;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p3}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object p3

    iget-object p3, p3, Leu/chainfire/lumen/a;->B:Leu/chainfire/lumen/a$h;

    add-int/lit8 v1, p2, 0x0

    invoke-virtual {p3, v1}, Leu/chainfire/lumen/a$h;->d(I)V

    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$z;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    iget-object v2, p0, Leu/chainfire/lumen/ui/SettingsFragment$z;->b:[Landroid/widget/TextView;

    aget-object v0, v2, v0

    invoke-static {p3, v0, v1}, Leu/chainfire/lumen/ui/SettingsFragment;->k(Leu/chainfire/lumen/ui/SettingsFragment;Landroid/widget/TextView;I)V

    :cond_0
    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$z;->a:[Landroid/widget/SeekBar;

    const/4 v0, 0x2

    aget-object p3, p3, v0

    if-ne p1, p3, :cond_1

    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$z;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p3}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object p3

    iget-object p3, p3, Leu/chainfire/lumen/a;->C:Leu/chainfire/lumen/a$h;

    add-int/lit8 v1, p2, 0x0

    invoke-virtual {p3, v1}, Leu/chainfire/lumen/a$h;->d(I)V

    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$z;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    iget-object v2, p0, Leu/chainfire/lumen/ui/SettingsFragment$z;->b:[Landroid/widget/TextView;

    aget-object v0, v2, v0

    invoke-static {p3, v0, v1}, Leu/chainfire/lumen/ui/SettingsFragment;->k(Leu/chainfire/lumen/ui/SettingsFragment;Landroid/widget/TextView;I)V

    :cond_1
    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$z;->a:[Landroid/widget/SeekBar;

    const/4 v0, 0x3

    aget-object p3, p3, v0

    if-ne p1, p3, :cond_2

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$z;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object p1

    iget-object p1, p1, Leu/chainfire/lumen/a;->D:Leu/chainfire/lumen/a$h;

    add-int/lit8 p2, p2, 0x64

    invoke-virtual {p1, p2}, Leu/chainfire/lumen/a$h;->d(I)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$z;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    iget-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$z;->b:[Landroid/widget/TextView;

    aget-object p3, p3, v0

    invoke-static {p1, p3, p2}, Leu/chainfire/lumen/ui/SettingsFragment;->k(Leu/chainfire/lumen/ui/SettingsFragment;Landroid/widget/TextView;I)V

    :cond_2
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
