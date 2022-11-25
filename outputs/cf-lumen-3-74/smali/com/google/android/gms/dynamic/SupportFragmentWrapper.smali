.class public final Lcom/google/android/gms/dynamic/SupportFragmentWrapper;
.super Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;
.source ""


# instance fields
.field private zzic:Landroid/support/v4/app/h;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    return-void
.end method

.method public static wrap(Landroid/support/v4/app/h;)Lcom/google/android/gms/dynamic/SupportFragmentWrapper;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;-><init>(Landroid/support/v4/app/h;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getArguments()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->l()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getId()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->s()I

    move-result v0

    return v0
.end method

.method public final getRetainInstance()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->A()Z

    move-result v0

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->H()I

    move-result v0

    return v0
.end method

.method public final getUserVisibleHint()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->I()Z

    move-result v0

    return v0
.end method

.method public final isAdded()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->N()Z

    move-result v0

    return v0
.end method

.method public final isDetached()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->O()Z

    move-result v0

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->P()Z

    move-result v0

    return v0
.end method

.method public final isInLayout()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->S()Z

    move-result v0

    return v0
.end method

.method public final isRemoving()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->U()Z

    move-result v0

    return v0
.end method

.method public final isResumed()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->V()Z

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->Y()Z

    move-result v0

    return v0
.end method

.method public final setHasOptionsMenu(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/h;->j1(Z)V

    return-void
.end method

.method public final setMenuVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/h;->m1(Z)V

    return-void
.end method

.method public final setRetainInstance(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/h;->q1(Z)V

    return-void
.end method

.method public final setUserVisibleHint(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/h;->s1(Z)V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/h;->t1(Landroid/content/Intent;)V

    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/h;->v1(Landroid/content/Intent;I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/h;->d1(Landroid/view/View;)V

    return-void
.end method

.method public final zzad()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->g()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzae()Lcom/google/android/gms/dynamic/IFragmentWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->x()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->wrap(Landroid/support/v4/app/h;)Lcom/google/android/gms/dynamic/SupportFragmentWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzaf()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->z()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzag()Lcom/google/android/gms/dynamic/IFragmentWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->G()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->wrap(Landroid/support/v4/app/h;)Lcom/google/android/gms/dynamic/SupportFragmentWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzah()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->J()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Landroid/support/v4/app/h;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/h;->y1(Landroid/view/View;)V

    return-void
.end method
