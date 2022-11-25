.class Leu/chainfire/lumen/ui/SettingsFragment$b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/SettingsFragment;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Landroid/widget/TextView;

.field final synthetic b:[Landroid/widget/SeekBar;

.field final synthetic c:Leu/chainfire/lumen/ui/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment;[Landroid/widget/TextView;[Landroid/widget/SeekBar;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    iput-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0;->a:[Landroid/widget/TextView;

    iput-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0;->b:[Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    iget-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0;->a:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v2, p2, v1

    const/16 v3, 0x64

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ne p1, v2, :cond_0

    new-array p1, v4, [I

    aput v1, p1, v0

    iget-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p2}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object p2

    iget-object p2, p2, Leu/chainfire/lumen/a;->B:Leu/chainfire/lumen/a$h;

    invoke-virtual {p2}, Leu/chainfire/lumen/a$h;->c()I

    move-result p2

    aput p2, p1, v1

    aput v0, p1, v6

    aput v3, p1, v5

    goto :goto_0

    :cond_0
    aget-object v2, p2, v6

    if-ne p1, v2, :cond_1

    new-array p1, v4, [I

    aput v6, p1, v0

    iget-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p2}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object p2

    iget-object p2, p2, Leu/chainfire/lumen/a;->C:Leu/chainfire/lumen/a$h;

    invoke-virtual {p2}, Leu/chainfire/lumen/a$h;->c()I

    move-result p2

    aput p2, p1, v1

    aput v0, p1, v6

    const/16 p2, 0xfa

    aput p2, p1, v5

    goto :goto_0

    :cond_1
    aget-object p2, p2, v5

    if-ne p1, p2, :cond_2

    new-array p1, v4, [I

    aput v5, p1, v0

    iget-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p2}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object p2

    iget-object p2, p2, Leu/chainfire/lumen/a;->D:Leu/chainfire/lumen/a$h;

    invoke-virtual {p2}, Leu/chainfire/lumen/a$h;->c()I

    move-result p2

    aput p2, p1, v1

    aput v3, p1, v6

    const/16 p2, 0x5dc

    aput p2, p1, v5

    :goto_0
    new-array v3, v1, [Ljava/lang/String;

    aget p2, p1, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v0

    iget-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$b0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p2}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v4, 0x2

    const v5, 0x7f090094

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7f090099

    new-instance v10, Leu/chainfire/lumen/ui/SettingsFragment$b0$a;

    invoke-direct {v10, p0, v3, p1}, Leu/chainfire/lumen/ui/SettingsFragment$b0$a;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$b0;[Ljava/lang/String;[I)V

    invoke-static/range {v2 .. v10}, Leu/chainfire/lumen/ui/a;->f(Landroid/content/Context;[Ljava/lang/String;IILjava/lang/Runnable;ILjava/lang/Runnable;ILjava/lang/Runnable;)V

    return v1

    :cond_2
    return v0
.end method
