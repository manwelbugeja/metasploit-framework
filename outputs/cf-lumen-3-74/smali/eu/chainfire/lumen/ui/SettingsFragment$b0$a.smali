.class Leu/chainfire/lumen/ui/SettingsFragment$b0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/SettingsFragment$b0;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:[I

.field final synthetic c:Leu/chainfire/lumen/ui/SettingsFragment$b0;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment$b0;[Ljava/lang/String;[I)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0$a;->c:Leu/chainfire/lumen/ui/SettingsFragment$b0;

    iput-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0$a;->a:[Ljava/lang/String;

    iput-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0$a;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0$a;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0$a;->b:[I

    const/4 v3, 0x2

    aget v4, v2, v3

    if-ge v0, v4, :cond_0

    aget v0, v2, v3

    :cond_0
    const/4 v4, 0x3

    aget v5, v2, v4

    if-le v0, v5, :cond_1

    aget v0, v2, v4

    :cond_1
    iget-object v5, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0$a;->c:Leu/chainfire/lumen/ui/SettingsFragment$b0;

    iget-object v5, v5, Leu/chainfire/lumen/ui/SettingsFragment$b0;->b:[Landroid/widget/SeekBar;

    aget v6, v2, v1

    aget-object v5, v5, v6

    aget v2, v2, v3

    sub-int v2, v0, v2

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0$a;->c:Leu/chainfire/lumen/ui/SettingsFragment$b0;

    iget-object v5, v2, Leu/chainfire/lumen/ui/SettingsFragment$b0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    iget-object v2, v2, Leu/chainfire/lumen/ui/SettingsFragment$b0;->a:[Landroid/widget/TextView;

    iget-object v6, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0$a;->b:[I

    aget v6, v6, v1

    aget-object v2, v2, v6

    invoke-static {v5, v2, v0}, Leu/chainfire/lumen/ui/SettingsFragment;->k(Leu/chainfire/lumen/ui/SettingsFragment;Landroid/widget/TextView;I)V

    iget-object v2, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0$a;->b:[I

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    if-eq v1, v3, :cond_3

    if-eq v1, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0$a;->c:Leu/chainfire/lumen/ui/SettingsFragment$b0;

    iget-object v1, v1, Leu/chainfire/lumen/ui/SettingsFragment$b0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v1}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v1

    iget-object v1, v1, Leu/chainfire/lumen/a;->D:Leu/chainfire/lumen/a$h;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0$a;->c:Leu/chainfire/lumen/ui/SettingsFragment$b0;

    iget-object v1, v1, Leu/chainfire/lumen/ui/SettingsFragment$b0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v1}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v1

    iget-object v1, v1, Leu/chainfire/lumen/a;->C:Leu/chainfire/lumen/a$h;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0$a;->c:Leu/chainfire/lumen/ui/SettingsFragment$b0;

    iget-object v1, v1, Leu/chainfire/lumen/ui/SettingsFragment$b0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v1}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v1

    iget-object v1, v1, Leu/chainfire/lumen/a;->B:Leu/chainfire/lumen/a$h;

    :goto_0
    invoke-virtual {v1, v0}, Leu/chainfire/lumen/a$h;->d(I)V

    :goto_1
    return-void
.end method
