.class Leu/chainfire/lumen/ui/SettingsFragment$p0;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/ui/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "p0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Leu/chainfire/lumen/drivers/e;

.field private c:Landroid/app/ProgressDialog;

.field final synthetic d:Leu/chainfire/lumen/ui/SettingsFragment;


# direct methods
.method public constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->b:Leu/chainfire/lumen/drivers/e;

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->c:Landroid/app/ProgressDialog;

    iput-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Leu/chainfire/lumen/ui/SettingsFragment$p0;)Leu/chainfire/lumen/drivers/e;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->b:Leu/chainfire/lumen/drivers/e;

    return-object p0
.end method


# virtual methods
.method protected varargs b([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 12

    const/4 p1, 0x1

    new-array v0, p1, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    new-instance v2, Lc/a/a/c$b;

    invoke-direct {v2}, Lc/a/a/c$b;-><init>()V

    invoke-virtual {v2}, Lc/a/a/c$b;->p()Lc/a/a/c$b;

    const-string v3, "id"

    new-instance v4, Leu/chainfire/lumen/ui/SettingsFragment$p0$b;

    invoke-direct {v4, p0, v0}, Leu/chainfire/lumen/ui/SettingsFragment$p0$b;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$p0;[Z)V

    invoke-virtual {v2, v3, v1, v4}, Lc/a/a/c$b;->j(Ljava/lang/String;ILc/a/a/c$f;)Lc/a/a/c$b;

    invoke-virtual {v2}, Lc/a/a/c$b;->l()Lc/a/a/c$d;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Lc/a/a/c$d;->y()Z

    move-result v3

    const-wide/16 v4, 0x20

    if-eqz v3, :cond_1

    monitor-enter v0

    :try_start_0
    aget-boolean v3, v0, v1

    if-eqz v3, :cond_0

    monitor-exit v0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object v3, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    aget-boolean v0, v0, v1

    invoke-static {v3, v0}, Leu/chainfire/lumen/ui/SettingsFragment;->d(Leu/chainfire/lumen/ui/SettingsFragment;Z)Z

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Leu/chainfire/lumen/drivers/e;->a(Landroid/content/Context;Lc/a/a/c$d;)Leu/chainfire/lumen/drivers/e;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->b:Leu/chainfire/lumen/drivers/e;

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->l(Leu/chainfire/lumen/ui/SettingsFragment;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :goto_2
    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->a(Leu/chainfire/lumen/ui/SettingsFragment;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v10, v6

    cmp-long v0, v8, v10

    if-gez v0, :cond_2

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    nop

    goto :goto_2

    :cond_2
    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->a(Leu/chainfire/lumen/ui/SettingsFragment;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v0

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/lumen/a;->h()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->a(Leu/chainfire/lumen/ui/SettingsFragment;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_4
    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->a(Leu/chainfire/lumen/ui/SettingsFragment;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v0

    iget-object v3, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "inapp"

    const/4 v5, 0x0

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "INAPP_DATA_SIGNATURE"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "purchase.1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v6}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v6

    invoke-virtual {v6}, Leu/chainfire/lumen/a;->j()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_2
    nop

    :cond_5
    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->c(Leu/chainfire/lumen/ui/SettingsFragment;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Leu/chainfire/lumen/drivers/h;->o(Landroid/content/Context;)Leu/chainfire/lumen/drivers/h;

    move-result-object p1

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Leu/chainfire/lumen/drivers/h;->p()Z

    move-result p1

    invoke-static {v0, p1}, Leu/chainfire/lumen/ui/SettingsFragment;->r(Leu/chainfire/lumen/ui/SettingsFragment;Z)Z

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Leu/chainfire/lumen/drivers/j;->o(Landroid/content/Context;)Leu/chainfire/lumen/drivers/j;

    move-result-object p1

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Leu/chainfire/lumen/drivers/j;->p()Z

    move-result p1

    invoke-static {v0, p1}, Leu/chainfire/lumen/ui/SettingsFragment;->t(Leu/chainfire/lumen/ui/SettingsFragment;Z)Z

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->q(Leu/chainfire/lumen/ui/SettingsFragment;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object p1

    iget-object p1, p1, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    invoke-virtual {p1}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kcal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object p1

    iget-object p1, p1, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    const-string v0, "cflumen"

    invoke-virtual {p1, v0}, Leu/chainfire/lumen/a$k;->d(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->s(Leu/chainfire/lumen/ui/SettingsFragment;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object p1

    iget-object p1, p1, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    invoke-virtual {p1}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pccrgb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object p1

    iget-object p1, p1, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    const-string v0, "cflumen"

    invoke-virtual {p1, v0}, Leu/chainfire/lumen/a$k;->d(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->b:Leu/chainfire/lumen/drivers/e;

    invoke-virtual {p1}, Leu/chainfire/lumen/drivers/e;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x2

    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_8
    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->b:Leu/chainfire/lumen/drivers/e;

    invoke-virtual {p1}, Leu/chainfire/lumen/drivers/e;->c()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->b:Leu/chainfire/lumen/drivers/e;

    invoke-virtual {p1}, Leu/chainfire/lumen/drivers/e;->d()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x4

    goto :goto_4

    :cond_a
    invoke-static {}, Lc/a/a/c$h;->b()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {v1}, Lc/a/a/c$h;->g(Z)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUPERSU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MAGISKSU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x5

    goto :goto_4

    :cond_b
    invoke-static {}, Lc/a/a/c$h;->a()V

    goto :goto_5

    :cond_c
    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->u(Leu/chainfire/lumen/ui/SettingsFragment;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 p1, 0x6

    goto :goto_4

    :cond_d
    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "rootless"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    const-string v1, "rootless"

    invoke-virtual {v0, v1}, Leu/chainfire/lumen/a$k;->d(Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected c(Ljava/lang/Integer;)V
    .locals 8

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->v(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/drivers/d;

    move-result-object p1

    invoke-virtual {p1}, Leu/chainfire/lumen/drivers/d;->v()V

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->x(Leu/chainfire/lumen/ui/SettingsFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->y(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/ui/a;

    move-result-object p1

    new-instance v0, Leu/chainfire/lumen/ui/SettingsFragment$p0$c;

    invoke-direct {v0, p0}, Leu/chainfire/lumen/ui/SettingsFragment$p0$c;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$p0;)V

    :goto_0
    invoke-virtual {p1, v0}, Leu/chainfire/lumen/ui/a;->e(Leu/chainfire/lumen/ui/a$k;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment$p0;->c(Ljava/lang/Integer;)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->y(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/ui/a;

    move-result-object v0

    const v1, 0x7f090043

    const v2, 0x7f090094

    new-instance v3, Leu/chainfire/lumen/ui/SettingsFragment$p0$d;

    invoke-direct {v3, p0}, Leu/chainfire/lumen/ui/SettingsFragment$p0$d;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$p0;)V

    const v4, 0x7f09009d

    new-instance v5, Leu/chainfire/lumen/ui/SettingsFragment$p0$e;

    invoke-direct {v5, p0}, Leu/chainfire/lumen/ui/SettingsFragment$p0$e;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$p0;)V

    const v6, 0x7f09009c

    new-instance v7, Leu/chainfire/lumen/ui/SettingsFragment$p0$f;

    invoke-direct {v7, p0}, Leu/chainfire/lumen/ui/SettingsFragment$p0$f;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$p0;)V

    :goto_1
    invoke-virtual/range {v0 .. v7}, Leu/chainfire/lumen/ui/a;->b(IILjava/lang/Runnable;ILjava/lang/Runnable;ILjava/lang/Runnable;)V

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->y(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/ui/a;

    move-result-object p1

    new-instance v0, Leu/chainfire/lumen/ui/SettingsFragment$p0$i;

    invoke-direct {v0, p0}, Leu/chainfire/lumen/ui/SettingsFragment$p0$i;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$p0;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->y(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/ui/a;

    move-result-object v0

    const v1, 0x7f090040

    const/4 v2, 0x0

    new-instance v3, Leu/chainfire/lumen/ui/SettingsFragment$p0$j;

    invoke-direct {v3, p0}, Leu/chainfire/lumen/ui/SettingsFragment$p0$j;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$p0;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f090098

    new-instance v7, Leu/chainfire/lumen/ui/SettingsFragment$p0$a;

    invoke-direct {v7, p0}, Leu/chainfire/lumen/ui/SettingsFragment$p0$a;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$p0;)V

    goto :goto_1

    :cond_5
    :goto_2
    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->y(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/ui/a;

    move-result-object v0

    const v1, 0x7f090044

    const/4 v2, 0x0

    new-instance v3, Leu/chainfire/lumen/ui/SettingsFragment$p0$g;

    invoke-direct {v3, p0}, Leu/chainfire/lumen/ui/SettingsFragment$p0$g;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$p0;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f090098

    new-instance v7, Leu/chainfire/lumen/ui/SettingsFragment$p0$h;

    invoke-direct {v7, p0}, Leu/chainfire/lumen/ui/SettingsFragment$p0$h;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$p0;)V

    goto :goto_1

    :cond_6
    :goto_3
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment$p0;->b([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment$p0;->c(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->c:Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->a:Landroid/content/Context;

    const v2, 0x7f0900a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
