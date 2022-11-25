.class public Leu/chainfire/lumen/ui/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source ""

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/lumen/ui/SettingsFragment$q0;,
        Leu/chainfire/lumen/ui/SettingsFragment$o0;,
        Leu/chainfire/lumen/ui/SettingsFragment$n0;,
        Leu/chainfire/lumen/ui/SettingsFragment$p0;
    }
.end annotation


# instance fields
.field private A:Landroid/preference/Preference;

.field private B:Landroid/preference/ListPreference;

.field private C:Landroid/preference/Preference;

.field private D:Z

.field private E:Leu/chainfire/lumen/ui/a;

.field private volatile F:Lcom/android/vending/billing/IInAppBillingService;

.field private G:Z

.field private H:Z

.field private final I:Z

.field private final J:Z

.field private final K:Landroid/content/ServiceConnection;

.field private a:Ljava/lang/String;

.field private b:Landroid/content/SharedPreferences;

.field private c:Leu/chainfire/lumen/a;

.field private d:Leu/chainfire/lumen/drivers/d;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/preference/Preference;

.field private i:Landroid/preference/Preference;

.field private j:Landroid/preference/Preference;

.field private k:Landroid/preference/Preference;

.field private l:Landroid/preference/Preference;

.field private m:Landroid/preference/Preference;

.field private n:Landroid/preference/Preference;

.field private o:Landroid/preference/Preference;

.field private p:Landroid/preference/CheckBoxPreference;

.field private q:Landroid/preference/CheckBoxPreference;

.field private r:Landroid/preference/CheckBoxPreference;

.field private s:Landroid/preference/CheckBoxPreference;

.field private t:Landroid/preference/CheckBoxPreference;

.field private u:Landroid/preference/Preference;

.field private v:Landroid/preference/ListPreference;

.field private w:Landroid/preference/ListPreference;

.field private x:Landroid/preference/CheckBoxPreference;

.field private y:Landroid/preference/Preference;

.field private z:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->b:Landroid/content/SharedPreferences;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->d:Leu/chainfire/lumen/drivers/d;

    const/4 v1, 0x0

    iput-boolean v1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->e:Z

    iput-boolean v1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->f:Z

    iput-boolean v1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->g:Z

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->h:Landroid/preference/Preference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->i:Landroid/preference/Preference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->j:Landroid/preference/Preference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->k:Landroid/preference/Preference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->l:Landroid/preference/Preference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->m:Landroid/preference/Preference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->n:Landroid/preference/Preference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->o:Landroid/preference/Preference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->p:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->q:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->r:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->s:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->t:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->u:Landroid/preference/Preference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->v:Landroid/preference/ListPreference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->w:Landroid/preference/ListPreference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->x:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->y:Landroid/preference/Preference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->z:Landroid/preference/ListPreference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->A:Landroid/preference/Preference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->B:Landroid/preference/ListPreference;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->C:Landroid/preference/Preference;

    iput-boolean v1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->D:Z

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->E:Leu/chainfire/lumen/ui/a;

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->F:Lcom/android/vending/billing/IInAppBillingService;

    iput-boolean v1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->G:Z

    iput-boolean v1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->H:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1d

    if-ge v0, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Leu/chainfire/lumen/ui/SettingsFragment;->I:Z

    if-ge v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->J:Z

    new-instance v0, Leu/chainfire/lumen/ui/SettingsFragment$k;

    invoke-direct {v0, p0}, Leu/chainfire/lumen/ui/SettingsFragment$k;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->K:Landroid/content/ServiceConnection;

    return-void
.end method

.method private A(Landroid/preference/Preference;ZZZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Leu/chainfire/lumen/ui/SettingsFragment;->H()Z

    move-result p2

    if-nez p2, :cond_0

    const p2, 0x7f0900fd

    :goto_0
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0}, Leu/chainfire/lumen/ui/SettingsFragment;->I()Z

    move-result p2

    if-nez p2, :cond_1

    const p2, 0x7f0900e3

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private C(I[I)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1, p2}, Leu/chainfire/lumen/ui/SettingsFragment;->D(I[I)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x3c

    if-gt p1, v1, :cond_0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p2

    const-string p1, "%ds"

    invoke-static {v1, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    div-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p2

    const-string p1, "%dm"

    invoke-static {v2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private D(I[I)I
    .locals 1

    array-length v0, p2

    if-ge p1, v0, :cond_0

    aget p1, p2, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private E(I[I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget v2, p2, v1

    if-gt p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private F(II)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "0"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v1, ":"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/16 v0, 0xc

    if-ge p1, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AM"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " PM"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private G(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x7f0900f8

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getHours()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/Date;->getMinutes()I

    move-result p1

    invoke-direct {p0, v0, p1}, Leu/chainfire/lumen/ui/SettingsFragment;->F(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private H()Z
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v0, v0, Leu/chainfire/lumen/a;->h:Leu/chainfire/lumen/a$c;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v0

    return v0
.end method

.method private I()Z
    .locals 2

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v0, v0, Leu/chainfire/lumen/a;->l:Leu/chainfire/lumen/a$f;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$f;->c()Leu/chainfire/lumen/a$d;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v0

    sget-object v1, Leu/chainfire/lumen/a$e;->e:Leu/chainfire/lumen/a$e;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private J(Ljava/lang/String;)V
    .locals 2

    const-string v0, "compatibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v0, v0, Leu/chainfire/lumen/a;->N:Leu/chainfire/lumen/a$k;

    invoke-virtual {v0, p1}, Leu/chainfire/lumen/a$k;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/lumen/drivers/m;->L(Landroid/content/Context;)Leu/chainfire/lumen/drivers/m;

    move-result-object v0

    sget-object v1, Leu/chainfire/lumen/drivers/m$g;->a:Leu/chainfire/lumen/drivers/m$g;

    invoke-virtual {v0, v1}, Leu/chainfire/lumen/drivers/m;->P(Leu/chainfire/lumen/drivers/m$g;)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->B:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Leu/chainfire/lumen/ui/SettingsFragment$o0;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Leu/chainfire/lumen/ui/SettingsFragment$o0;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method private K()V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    move-object/from16 v7, p0

    const/16 v0, 0xa

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    const/4 v0, 0x6

    new-array v5, v0, [I

    fill-array-data v5, :array_1

    const/16 v0, 0x9

    new-array v6, v0, [I

    fill-array-data v6, :array_2

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v1

    float-to-int v1, v2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v2, 0x168

    if-gt v1, v2, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f080009

    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    const/4 v1, 0x4

    new-array v4, v1, [Landroid/widget/TextView;

    const v2, 0x7f06003f

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v4, v8

    const v2, 0x7f060041

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v4, v9

    const v2, 0x7f06003d

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v13, 0x2

    aput-object v2, v4, v13

    const v2, 0x7f06003b

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v14, 0x3

    aput-object v2, v4, v14

    new-array v15, v1, [Landroid/widget/SeekBar;

    const v1, 0x7f060063

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    aput-object v1, v15, v8

    const v1, 0x7f060064

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    aput-object v1, v15, v9

    const v1, 0x7f060062

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    aput-object v1, v15, v13

    const v1, 0x7f060061

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    aput-object v1, v15, v14

    aget-object v1, v4, v8

    iget-object v2, v7, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->I:Leu/chainfire/lumen/a$h;

    invoke-virtual {v2}, Leu/chainfire/lumen/a$h;->c()I

    move-result v2

    invoke-direct {v7, v2, v3}, Leu/chainfire/lumen/ui/SettingsFragment;->E(I[I)I

    move-result v2

    invoke-direct {v7, v2, v3}, Leu/chainfire/lumen/ui/SettingsFragment;->C(I[I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v1, v4, v9

    iget-object v2, v7, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->J:Leu/chainfire/lumen/a$h;

    invoke-virtual {v2}, Leu/chainfire/lumen/a$h;->c()I

    move-result v2

    invoke-direct {v7, v2, v3}, Leu/chainfire/lumen/ui/SettingsFragment;->E(I[I)I

    move-result v2

    invoke-direct {v7, v2, v3}, Leu/chainfire/lumen/ui/SettingsFragment;->C(I[I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v1, v4, v13

    iget-object v2, v7, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->K:Leu/chainfire/lumen/a$h;

    invoke-virtual {v2}, Leu/chainfire/lumen/a$h;->c()I

    move-result v2

    invoke-direct {v7, v2, v5}, Leu/chainfire/lumen/ui/SettingsFragment;->E(I[I)I

    move-result v2

    invoke-direct {v7, v2, v5}, Leu/chainfire/lumen/ui/SettingsFragment;->C(I[I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v1, v4, v14

    iget-object v2, v7, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->L:Leu/chainfire/lumen/a$h;

    invoke-virtual {v2}, Leu/chainfire/lumen/a$h;->c()I

    move-result v2

    invoke-direct {v7, v2, v6}, Leu/chainfire/lumen/ui/SettingsFragment;->E(I[I)I

    move-result v2

    invoke-direct {v7, v2, v6}, Leu/chainfire/lumen/ui/SettingsFragment;->C(I[I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v1, v15, v8

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    aget-object v1, v15, v9

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    aget-object v0, v15, v13

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    aget-object v0, v15, v14

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    aget-object v0, v15, v8

    iget-object v1, v7, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v1, v1, Leu/chainfire/lumen/a;->I:Leu/chainfire/lumen/a$h;

    invoke-virtual {v1}, Leu/chainfire/lumen/a$h;->c()I

    move-result v1

    invoke-direct {v7, v1, v3}, Leu/chainfire/lumen/ui/SettingsFragment;->E(I[I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    aget-object v0, v15, v9

    iget-object v1, v7, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v1, v1, Leu/chainfire/lumen/a;->J:Leu/chainfire/lumen/a$h;

    invoke-virtual {v1}, Leu/chainfire/lumen/a$h;->c()I

    move-result v1

    invoke-direct {v7, v1, v3}, Leu/chainfire/lumen/ui/SettingsFragment;->E(I[I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    aget-object v0, v15, v13

    iget-object v1, v7, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v1, v1, Leu/chainfire/lumen/a;->K:Leu/chainfire/lumen/a$h;

    invoke-virtual {v1}, Leu/chainfire/lumen/a$h;->c()I

    move-result v1

    invoke-direct {v7, v1, v5}, Leu/chainfire/lumen/ui/SettingsFragment;->E(I[I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    aget-object v0, v15, v14

    iget-object v1, v7, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v1, v1, Leu/chainfire/lumen/a;->L:Leu/chainfire/lumen/a$h;

    invoke-virtual {v1}, Leu/chainfire/lumen/a$h;->c()I

    move-result v1

    invoke-direct {v7, v1, v6}, Leu/chainfire/lumen/ui/SettingsFragment;->E(I[I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v2, Leu/chainfire/lumen/ui/SettingsFragment$e0;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v11, v2

    move-object v2, v15

    invoke-direct/range {v0 .. v6}, Leu/chainfire/lumen/ui/SettingsFragment$e0;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;[Landroid/widget/SeekBar;[I[Landroid/widget/TextView;[I[I)V

    aget-object v0, v15, v8

    invoke-virtual {v0, v11}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    aget-object v0, v15, v9

    invoke-virtual {v0, v11}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    aget-object v0, v15, v13

    invoke-virtual {v0, v11}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    aget-object v0, v15, v14

    invoke-virtual {v0, v11}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-nez v10, :cond_1

    const v1, 0x7f090098

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900df

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1e
        0x3c
        0x78
        0x12c
        0x258
        0x384
        0x708
        0xa8c
        0xe10
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x5
        0xa
        0x1e
        0x78
        0x12c
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x5
        0xa
        0xf
        0x1e
        0x2d
        0x3c
    .end array-data
.end method

.method private L(Leu/chainfire/lumen/ui/a;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09008a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09008e

    new-instance v2, Leu/chainfire/lumen/ui/SettingsFragment$y;

    invoke-direct {v2, p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment$y;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;Leu/chainfire/lumen/ui/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090089

    new-instance v2, Leu/chainfire/lumen/ui/SettingsFragment$x;

    invoke-direct {v2, p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment$x;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;Leu/chainfire/lumen/ui/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "http://www.twitter.com/ChainfireXDA"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    :catch_0
    :goto_0
    return-void
.end method

.method private M()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x168

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f08000c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    new-array v6, v4, [Landroid/widget/TextView;

    const v7, 0x7f060032

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v6, v1

    const v7, 0x7f060034

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v6, v2

    const v7, 0x7f060044

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const v7, 0x7f06002f

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v9, 0x3

    aput-object v7, v6, v9

    new-array v4, v4, [Landroid/widget/SeekBar;

    aput-object v5, v4, v1

    const v5, 0x7f06005e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    aput-object v5, v4, v2

    const v5, 0x7f060065

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    aput-object v5, v4, v8

    const v5, 0x7f06005d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    aput-object v5, v4, v9

    aget-object v5, v6, v1

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v1

    const-string v11, "%d"

    invoke-static {v7, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v5, v6, v2

    iget-object v7, p0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->B:Leu/chainfire/lumen/a$h;

    invoke-virtual {v7}, Leu/chainfire/lumen/a$h;->c()I

    move-result v7

    invoke-direct {p0, v5, v7}, Leu/chainfire/lumen/ui/SettingsFragment;->O(Landroid/widget/TextView;I)V

    aget-object v5, v6, v8

    iget-object v7, p0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->C:Leu/chainfire/lumen/a$h;

    invoke-virtual {v7}, Leu/chainfire/lumen/a$h;->c()I

    move-result v7

    invoke-direct {p0, v5, v7}, Leu/chainfire/lumen/ui/SettingsFragment;->O(Landroid/widget/TextView;I)V

    aget-object v5, v6, v9

    iget-object v7, p0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->D:Leu/chainfire/lumen/a$h;

    invoke-virtual {v7}, Leu/chainfire/lumen/a$h;->c()I

    move-result v7

    invoke-direct {p0, v5, v7}, Leu/chainfire/lumen/ui/SettingsFragment;->O(Landroid/widget/TextView;I)V

    aget-object v5, v4, v2

    const/16 v7, 0x64

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setMax(I)V

    aget-object v5, v4, v8

    const/16 v10, 0xfa

    invoke-virtual {v5, v10}, Landroid/widget/SeekBar;->setMax(I)V

    aget-object v5, v4, v9

    const/16 v10, 0x578

    invoke-virtual {v5, v10}, Landroid/widget/SeekBar;->setMax(I)V

    aget-object v5, v4, v2

    iget-object v10, p0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v10, v10, Leu/chainfire/lumen/a;->B:Leu/chainfire/lumen/a$h;

    invoke-virtual {v10}, Leu/chainfire/lumen/a$h;->c()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-virtual {v5, v10}, Landroid/widget/SeekBar;->setProgress(I)V

    aget-object v5, v4, v8

    iget-object v10, p0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v10, v10, Leu/chainfire/lumen/a;->C:Leu/chainfire/lumen/a$h;

    invoke-virtual {v10}, Leu/chainfire/lumen/a$h;->c()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-virtual {v5, v10}, Landroid/widget/SeekBar;->setProgress(I)V

    aget-object v1, v4, v9

    iget-object v5, p0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v5, v5, Leu/chainfire/lumen/a;->D:Leu/chainfire/lumen/a$h;

    invoke-virtual {v5}, Leu/chainfire/lumen/a$h;->c()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v1, Leu/chainfire/lumen/ui/SettingsFragment$z;

    invoke-direct {v1, p0, v4, v6}, Leu/chainfire/lumen/ui/SettingsFragment$z;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;[Landroid/widget/SeekBar;[Landroid/widget/TextView;)V

    aget-object v5, v4, v2

    invoke-virtual {v5, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    aget-object v5, v4, v8

    invoke-virtual {v5, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    aget-object v5, v4, v9

    invoke-virtual {v5, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v5, "sensor"

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    new-instance v7, Leu/chainfire/lumen/ui/SettingsFragment$a0;

    invoke-direct {v7, p0, v6}, Leu/chainfire/lumen/ui/SettingsFragment$a0;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;[Landroid/widget/TextView;)V

    if-eqz v5, :cond_1

    invoke-virtual {v1, v7, v5, v9}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    new-instance v10, Leu/chainfire/lumen/ui/SettingsFragment$b0;

    invoke-direct {v10, p0, v6, v4}, Leu/chainfire/lumen/ui/SettingsFragment$b0;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;[Landroid/widget/TextView;[Landroid/widget/SeekBar;)V

    aget-object v4, v6, v2

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    aget-object v4, v6, v8

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    aget-object v4, v6, v9

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Leu/chainfire/lumen/ui/SettingsFragment$c0;

    invoke-direct {v3, p0, v5, v1, v7}, Leu/chainfire/lumen/ui/SettingsFragment$c0;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;Landroid/hardware/Sensor;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-nez v0, :cond_2

    const v0, 0x7f090098

    new-instance v3, Leu/chainfire/lumen/ui/SettingsFragment$d0;

    invoke-direct {v3, p0, v5, v1, v7}, Leu/chainfire/lumen/ui/SettingsFragment$d0;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;Landroid/hardware/Sensor;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_2
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private N(Leu/chainfire/lumen/a$f;Landroid/preference/Preference;IZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1}, Leu/chainfire/lumen/a$f;->c()Leu/chainfire/lumen/a$d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p3, v1, p4, v2}, Leu/chainfire/lumen/a;->a(Landroid/content/Context;Leu/chainfire/lumen/a$d;ZZ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    xor-int/lit8 p3, p4, 0x1

    iget-object p4, p0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object p4, p4, Leu/chainfire/lumen/a;->l:Leu/chainfire/lumen/a$f;

    if-eq p1, p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p2, p3, p1, v2}, Leu/chainfire/lumen/ui/SettingsFragment;->A(Landroid/preference/Preference;ZZZ)V

    return-void
.end method

.method private O(Landroid/widget/TextView;I)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "<u>%d</u>"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private P(Ljava/lang/String;)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v5, v5, Leu/chainfire/lumen/a;->h:Leu/chainfire/lumen/a$c;

    iget-object v5, v5, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v5, v5, Leu/chainfire/lumen/a;->i:Leu/chainfire/lumen/a$g;

    iget-object v5, v5, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v5, v5, Leu/chainfire/lumen/a;->j:Leu/chainfire/lumen/a$g;

    iget-object v5, v5, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v5, v5, Leu/chainfire/lumen/a;->k:Leu/chainfire/lumen/a$c;

    iget-object v5, v5, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_0
    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v5, v5, Leu/chainfire/lumen/a;->h:Leu/chainfire/lumen/a$c;

    invoke-virtual {v5}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v5

    const v6, 0x7f0900fb

    if-eqz v5, :cond_3

    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v5, v5, Leu/chainfire/lumen/a;->i:Leu/chainfire/lumen/a$g;

    invoke-virtual {v5}, Leu/chainfire/lumen/a$g;->c()F

    move-result v5

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->j:Leu/chainfire/lumen/a$g;

    invoke-virtual {v7}, Leu/chainfire/lumen/a$g;->c()F

    move-result v7

    new-instance v8, Leu/chainfire/lumen/b/b;

    invoke-direct {v8, v5, v7}, Leu/chainfire/lumen/b/b;-><init>(FF)V

    const v9, 0x7f0900f8

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Leu/chainfire/lumen/b/b;->d()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v8}, Leu/chainfire/lumen/b/b;->c()Z

    move-result v11

    if-nez v11, :cond_1

    if-eqz v10, :cond_1

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Leu/chainfire/lumen/b/b;->a()Ljava/util/Date;

    move-result-object v9

    invoke-direct {v0, v9}, Leu/chainfire/lumen/ui/SettingsFragment;->G(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Leu/chainfire/lumen/b/b;->b()Ljava/util/Date;

    move-result-object v8

    invoke-direct {v0, v8}, Leu/chainfire/lumen/ui/SettingsFragment;->G(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    :cond_1
    iget-object v8, v0, Leu/chainfire/lumen/ui/SettingsFragment;->i:Landroid/preference/Preference;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f0900f6

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v14, v3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v14, v4

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v5, 0x7f0900f9

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v10, v7, v3

    aput-object v9, v7, v4

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v5, v5, Leu/chainfire/lumen/a;->k:Leu/chainfire/lumen/a$c;

    invoke-virtual {v5}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0900f7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    const-string v5, ""

    :goto_0
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_4

    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v5, v5, Leu/chainfire/lumen/a;->h:Leu/chainfire/lumen/a$c;

    iget-object v5, v5, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->d:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {v5}, Leu/chainfire/lumen/drivers/d;->v()V

    goto :goto_1

    :cond_3
    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->i:Landroid/preference/Preference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0900fa

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->d:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {v5}, Leu/chainfire/lumen/drivers/d;->v()V

    :cond_5
    if-eqz v1, :cond_6

    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v5, v5, Leu/chainfire/lumen/a;->l:Leu/chainfire/lumen/a$f;

    iget-object v5, v5, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v5, v5, Leu/chainfire/lumen/a;->l:Leu/chainfire/lumen/a$f;

    iget-object v6, v0, Leu/chainfire/lumen/ui/SettingsFragment;->j:Landroid/preference/Preference;

    const v7, 0x7f0900e2

    invoke-direct {v0, v5, v6, v7, v4}, Leu/chainfire/lumen/ui/SettingsFragment;->N(Leu/chainfire/lumen/a$f;Landroid/preference/Preference;IZ)V

    :cond_7
    if-eqz v1, :cond_8

    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v5, v5, Leu/chainfire/lumen/a;->o:Leu/chainfire/lumen/a$f;

    iget-object v5, v5, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v5, v5, Leu/chainfire/lumen/a;->o:Leu/chainfire/lumen/a$f;

    iget-object v6, v0, Leu/chainfire/lumen/ui/SettingsFragment;->k:Landroid/preference/Preference;

    const v7, 0x7f0900e0

    invoke-direct {v0, v5, v6, v7, v3}, Leu/chainfire/lumen/ui/SettingsFragment;->N(Leu/chainfire/lumen/a$f;Landroid/preference/Preference;IZ)V

    :cond_9
    if-eqz v1, :cond_a

    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v5, v5, Leu/chainfire/lumen/a;->p:Leu/chainfire/lumen/a$f;

    iget-object v5, v5, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v5, v5, Leu/chainfire/lumen/a;->p:Leu/chainfire/lumen/a$f;

    iget-object v6, v0, Leu/chainfire/lumen/ui/SettingsFragment;->l:Landroid/preference/Preference;

    const v7, 0x7f0900e7

    invoke-direct {v0, v5, v6, v7, v3}, Leu/chainfire/lumen/ui/SettingsFragment;->N(Leu/chainfire/lumen/a$f;Landroid/preference/Preference;IZ)V

    :cond_b
    if-eqz v1, :cond_c

    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v5, v5, Leu/chainfire/lumen/a;->q:Leu/chainfire/lumen/a$f;

    iget-object v5, v5, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_c
    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v5, v5, Leu/chainfire/lumen/a;->q:Leu/chainfire/lumen/a$f;

    iget-object v6, v0, Leu/chainfire/lumen/ui/SettingsFragment;->m:Landroid/preference/Preference;

    const v7, 0x7f0900e5

    invoke-direct {v0, v5, v6, v7, v3}, Leu/chainfire/lumen/ui/SettingsFragment;->N(Leu/chainfire/lumen/a$f;Landroid/preference/Preference;IZ)V

    :cond_d
    const-string v5, " ]"

    const-string v6, "[ "

    if-eqz v1, :cond_e

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->u:Leu/chainfire/lumen/a$l;

    iget-object v7, v7, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_e
    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->n:Landroid/preference/Preference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f090109

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v9, v9, Leu/chainfire/lumen/a;->u:Leu/chainfire/lumen/a$l;

    invoke-virtual {v9}, Leu/chainfire/lumen/a$l;->d()I

    move-result v9

    iget-object v10, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v10, v10, Leu/chainfire/lumen/a;->u:Leu/chainfire/lumen/a$l;

    invoke-virtual {v10}, Leu/chainfire/lumen/a$l;->e()I

    move-result v10

    invoke-direct {v0, v9, v10}, Leu/chainfire/lumen/ui/SettingsFragment;->F(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->n:Landroid/preference/Preference;

    invoke-direct {v0, v7, v4, v4, v4}, Leu/chainfire/lumen/ui/SettingsFragment;->A(Landroid/preference/Preference;ZZZ)V

    if-eqz v1, :cond_f

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->d:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {v7}, Leu/chainfire/lumen/drivers/d;->v()V

    :cond_f
    if-eqz v1, :cond_10

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->v:Leu/chainfire/lumen/a$l;

    iget-object v7, v7, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_10
    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->o:Landroid/preference/Preference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f090107

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->v:Leu/chainfire/lumen/a$l;

    invoke-virtual {v2}, Leu/chainfire/lumen/a$l;->d()I

    move-result v2

    iget-object v9, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v9, v9, Leu/chainfire/lumen/a;->v:Leu/chainfire/lumen/a$l;

    invoke-virtual {v9}, Leu/chainfire/lumen/a$l;->e()I

    move-result v9

    invoke-direct {v0, v2, v9}, Leu/chainfire/lumen/ui/SettingsFragment;->F(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->o:Landroid/preference/Preference;

    invoke-direct {v0, v2, v4, v4, v4}, Leu/chainfire/lumen/ui/SettingsFragment;->A(Landroid/preference/Preference;ZZZ)V

    if-eqz v1, :cond_11

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->d:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {v2}, Leu/chainfire/lumen/drivers/d;->v()V

    :cond_11
    if-eqz v1, :cond_12

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->w:Leu/chainfire/lumen/a$c;

    iget-object v2, v2, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->p:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f09010b

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->p:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v2, v4, v4, v4}, Leu/chainfire/lumen/ui/SettingsFragment;->A(Landroid/preference/Preference;ZZZ)V

    :cond_13
    if-eqz v1, :cond_14

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->x:Leu/chainfire/lumen/a$c;

    iget-object v2, v2, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->q:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0900ef

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->q:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v2, v4, v4, v4}, Leu/chainfire/lumen/ui/SettingsFragment;->A(Landroid/preference/Preference;ZZZ)V

    if-eqz v1, :cond_15

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->y:Leu/chainfire/lumen/a$c;

    iget-object v2, v2, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Leu/chainfire/lumen/ui/SettingsFragment;->P(Ljava/lang/String;)V

    :cond_15
    if-eqz v1, :cond_16

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->y:Leu/chainfire/lumen/a$c;

    iget-object v2, v2, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_16
    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->x:Leu/chainfire/lumen/a$c;

    invoke-virtual {v2}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->r:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0900f1

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->r:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_17
    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->r:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0900f2

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->r:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_2
    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->r:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v2, v4, v4, v3}, Leu/chainfire/lumen/ui/SettingsFragment;->A(Landroid/preference/Preference;ZZZ)V

    :cond_18
    if-eqz v1, :cond_19

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->z:Leu/chainfire/lumen/a$c;

    iget-object v2, v2, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_19
    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->s:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0900f4

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->s:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v2, v4, v4, v4}, Leu/chainfire/lumen/ui/SettingsFragment;->A(Landroid/preference/Preference;ZZZ)V

    :cond_1a
    if-eqz v1, :cond_1b

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->A:Leu/chainfire/lumen/a$c;

    iget-object v2, v2, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1b
    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->t:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0900ed

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->t:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v2, v4, v4, v4}, Leu/chainfire/lumen/ui/SettingsFragment;->A(Landroid/preference/Preference;ZZZ)V

    :cond_1c
    if-nez v1, :cond_1d

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->u:Landroid/preference/Preference;

    const v7, 0x7f0900c1

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->u:Landroid/preference/Preference;

    invoke-direct {v0, v2, v4, v4, v4}, Leu/chainfire/lumen/ui/SettingsFragment;->A(Landroid/preference/Preference;ZZZ)V

    :cond_1d
    if-eqz v1, :cond_1e

    iget-object v8, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v8, v8, Leu/chainfire/lumen/a;->E:Leu/chainfire/lumen/a$k;

    iget-object v8, v8, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    iget-object v8, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v8, v8, Leu/chainfire/lumen/a;->F:Leu/chainfire/lumen/a$k;

    iget-object v8, v8, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    :cond_1e
    iget-object v8, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    invoke-virtual {v8}, Leu/chainfire/lumen/a;->g()Z

    move-result v8

    if-eqz v8, :cond_26

    iget-object v8, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v8, v8, Leu/chainfire/lumen/a;->E:Leu/chainfire/lumen/a$k;

    invoke-virtual {v8}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v8

    const-string v9, "always"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const v11, 0x7f090105

    const v12, 0x7f090102

    const-string v13, "never"

    const v14, 0x7f090101

    const-string v15, "demand"

    if-eqz v10, :cond_1f

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_3
    const/4 v10, 0x0

    goto :goto_4

    :cond_1f
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_20
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    goto :goto_4

    :cond_21
    const/4 v8, 0x0

    goto :goto_3

    :goto_4
    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->v:Landroid/preference/ListPreference;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v8, v11, v3

    const-string v8, "[ %s ]"

    invoke-static {v7, v8, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez v10, :cond_25

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->F:Leu/chainfire/lumen/a$k;

    invoke-virtual {v2}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_22
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_23
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const v2, 0x7f090105

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_24
    const/4 v2, 0x0

    :goto_5
    iget-object v9, v0, Leu/chainfire/lumen/ui/SettingsFragment;->w:Landroid/preference/ListPreference;

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v2, v10, v3

    invoke-static {v7, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->w:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_6

    :cond_25
    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->w:Landroid/preference/ListPreference;

    const v7, 0x7f090103

    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->w:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :goto_6
    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->v:Landroid/preference/ListPreference;

    invoke-direct {v0, v2, v4, v3, v4}, Leu/chainfire/lumen/ui/SettingsFragment;->A(Landroid/preference/Preference;ZZZ)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->w:Landroid/preference/ListPreference;

    invoke-direct {v0, v2, v4, v3, v3}, Leu/chainfire/lumen/ui/SettingsFragment;->A(Landroid/preference/Preference;ZZZ)V

    goto :goto_7

    :cond_26
    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->v:Landroid/preference/ListPreference;

    const v7, 0x7f0900b6

    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->v:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->w:Landroid/preference/ListPreference;

    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->w:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_27
    :goto_7
    if-eqz v1, :cond_28

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->G:Leu/chainfire/lumen/a$c;

    iget-object v2, v2, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_28
    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    invoke-virtual {v2}, Leu/chainfire/lumen/a;->g()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->x:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f09010d

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->x:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v2, v4, v3, v4}, Leu/chainfire/lumen/ui/SettingsFragment;->A(Landroid/preference/Preference;ZZZ)V

    goto :goto_8

    :cond_29
    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->x:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0900b6

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->x:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_2a
    :goto_8
    const-string v2, "string"

    if-eqz v1, :cond_2b

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->H:Leu/chainfire/lumen/a$k;

    iget-object v7, v7, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    :cond_2b
    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->z:Landroid/preference/ListPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "settings_theme_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v12, v12, Leu/chainfire/lumen/a;->H:Leu/chainfire/lumen/a$k;

    invoke-virtual {v12}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v2, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2c
    if-nez v1, :cond_2d

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->y:Landroid/preference/Preference;

    const v8, 0x7f0900dd

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->y:Landroid/preference/Preference;

    invoke-direct {v0, v7, v4, v3, v4}, Leu/chainfire/lumen/ui/SettingsFragment;->A(Landroid/preference/Preference;ZZZ)V

    :cond_2d
    if-eqz v1, :cond_2f

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->h:Leu/chainfire/lumen/a$c;

    iget-object v7, v7, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->i:Leu/chainfire/lumen/a$g;

    iget-object v7, v7, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->j:Leu/chainfire/lumen/a$g;

    iget-object v7, v7, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->l:Leu/chainfire/lumen/a$f;

    iget-object v7, v7, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    :cond_2e
    iget-boolean v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->H:Z

    iput-boolean v4, v0, Leu/chainfire/lumen/ui/SettingsFragment;->H:Z

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Leu/chainfire/lumen/ui/SettingsFragment;->P(Ljava/lang/String;)V

    iput-boolean v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->H:Z

    :cond_2f
    if-eqz v1, :cond_30

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    iget-object v7, v7, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    :cond_30
    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->A:Landroid/preference/Preference;

    if-eqz v7, :cond_31

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "settings_driver_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v12, v12, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    invoke-virtual {v12}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v2, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ]\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0900d0

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_31
    if-nez v1, :cond_32

    iget-boolean v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->H:Z

    if-nez v7, :cond_33

    :cond_32
    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->d:Leu/chainfire/lumen/drivers/d;

    const-string v8, "updatePrefs"

    invoke-virtual {v7, v8}, Leu/chainfire/lumen/drivers/d;->E(Ljava/lang/String;)V

    :cond_33
    if-eqz v1, :cond_34

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->N:Leu/chainfire/lumen/a$k;

    iget-object v7, v7, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    iget-object v7, v7, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    :cond_34
    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->B:Landroid/preference/ListPreference;

    if-eqz v7, :cond_36

    invoke-static {}, Leu/chainfire/lumen/drivers/m;->G()Z

    move-result v7

    if-nez v7, :cond_35

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->B:Landroid/preference/ListPreference;

    const v5, 0x7f0900cd

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(I)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->B:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_9

    :cond_35
    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->B:Landroid/preference/ListPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "settings_driver_cflumen_mode_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v11, v11, Leu/chainfire/lumen/a;->N:Leu/chainfire/lumen/a$k;

    invoke-virtual {v11}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v2, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->B:Landroid/preference/ListPreference;

    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v5, v5, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    invoke-virtual {v5}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v5

    const-string v6, "cflumen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_36
    :goto_9
    if-eqz v1, :cond_37

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->O:Leu/chainfire/lumen/a$c;

    iget-object v2, v2, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    iget-object v2, v2, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    :cond_37
    iget-object v1, v0, Leu/chainfire/lumen/ui/SettingsFragment;->C:Landroid/preference/Preference;

    if-eqz v1, :cond_3d

    const v1, 0x7f0900d7

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    invoke-virtual {v2}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v2

    const-string v5, "kcal"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const v1, 0x7f0900d2

    :cond_38
    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    invoke-virtual {v2}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v2

    const-string v6, "pccrgb"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    const v1, 0x7f0900da

    :cond_39
    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->C:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(I)V

    iget-boolean v1, v0, Leu/chainfire/lumen/ui/SettingsFragment;->D:Z

    if-nez v1, :cond_3d

    iget-object v1, v0, Leu/chainfire/lumen/ui/SettingsFragment;->C:Landroid/preference/Preference;

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->O:Leu/chainfire/lumen/a$c;

    invoke-virtual {v2}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v2

    if-eqz v2, :cond_3a

    const v2, 0x7f0900d4

    goto :goto_a

    :cond_3a
    const v2, 0x7f0900d3

    :goto_a
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v1, v0, Leu/chainfire/lumen/ui/SettingsFragment;->C:Landroid/preference/Preference;

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    invoke-virtual {v2}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    invoke-virtual {v2}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    :cond_3b
    const/4 v3, 0x1

    :cond_3c
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3d
    return-void
.end method

.method static synthetic a(Leu/chainfire/lumen/ui/SettingsFragment;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->F:Lcom/android/vending/billing/IInAppBillingService;

    return-object p0
.end method

.method static synthetic b(Leu/chainfire/lumen/ui/SettingsFragment;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->F:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1
.end method

.method static synthetic c(Leu/chainfire/lumen/ui/SettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->e:Z

    return p0
.end method

.method static synthetic d(Leu/chainfire/lumen/ui/SettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->e:Z

    return p1
.end method

.method static synthetic e(Leu/chainfire/lumen/ui/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/ui/SettingsFragment;->M()V

    return-void
.end method

.method static synthetic f(Leu/chainfire/lumen/ui/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/ui/SettingsFragment;->K()V

    return-void
.end method

.method static synthetic g(Leu/chainfire/lumen/ui/SettingsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment;->J(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Leu/chainfire/lumen/ui/SettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->D:Z

    return p1
.end method

.method static synthetic i(Leu/chainfire/lumen/ui/SettingsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment;->P(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Leu/chainfire/lumen/ui/SettingsFragment;Leu/chainfire/lumen/ui/a;)V
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment;->L(Leu/chainfire/lumen/ui/a;)V

    return-void
.end method

.method static synthetic k(Leu/chainfire/lumen/ui/SettingsFragment;Landroid/widget/TextView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Leu/chainfire/lumen/ui/SettingsFragment;->O(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic l(Leu/chainfire/lumen/ui/SettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->G:Z

    return p0
.end method

.method static synthetic m(Leu/chainfire/lumen/ui/SettingsFragment;I[I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Leu/chainfire/lumen/ui/SettingsFragment;->D(I[I)I

    move-result p0

    return p0
.end method

.method static synthetic n(Leu/chainfire/lumen/ui/SettingsFragment;I[I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Leu/chainfire/lumen/ui/SettingsFragment;->C(I[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Leu/chainfire/lumen/ui/SettingsFragment;)Landroid/preference/ListPreference;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->B:Landroid/preference/ListPreference;

    return-object p0
.end method

.method static synthetic p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    return-object p0
.end method

.method static synthetic q(Leu/chainfire/lumen/ui/SettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->f:Z

    return p0
.end method

.method static synthetic r(Leu/chainfire/lumen/ui/SettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->f:Z

    return p1
.end method

.method static synthetic s(Leu/chainfire/lumen/ui/SettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->g:Z

    return p0
.end method

.method static synthetic t(Leu/chainfire/lumen/ui/SettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->g:Z

    return p1
.end method

.method static synthetic u(Leu/chainfire/lumen/ui/SettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->I:Z

    return p0
.end method

.method static synthetic v(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/drivers/d;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->d:Leu/chainfire/lumen/drivers/d;

    return-object p0
.end method

.method static synthetic w(Leu/chainfire/lumen/ui/SettingsFragment;Leu/chainfire/lumen/drivers/d;)Leu/chainfire/lumen/drivers/d;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->d:Leu/chainfire/lumen/drivers/d;

    return-object p1
.end method

.method static synthetic x(Leu/chainfire/lumen/ui/SettingsFragment;)Landroid/preference/PreferenceScreen;
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/ui/SettingsFragment;->z()Landroid/preference/PreferenceScreen;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/ui/a;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->E:Leu/chainfire/lumen/ui/a;

    return-object p0
.end method

.method private z()Landroid/preference/PreferenceScreen;
    .locals 30

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->b:Landroid/content/SharedPreferences;

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    invoke-virtual {v2}, Leu/chainfire/lumen/a;->g()Z

    move-result v2

    iget-object v3, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    invoke-virtual {v3}, Leu/chainfire/lumen/a;->h()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090002

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Leu/chainfire/lumen/ui/SettingsFragment;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Pro"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " PseudoPro"

    goto :goto_0

    :cond_1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Free"

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " v"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    new-instance v6, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v4, 0x7f090001

    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setSummary(I)V

    const-string v4, "copyright"

    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    new-instance v7, Leu/chainfire/lumen/ui/SettingsFragment$v;

    invoke-direct {v7, v0}, Leu/chainfire/lumen/ui/SettingsFragment$v;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x0

    const v10, 0x7f0900c9

    const v11, 0x7f0900c8

    const/4 v12, 0x1

    new-instance v13, Leu/chainfire/lumen/ui/SettingsFragment$g0;

    invoke-direct {v13, v0}, Leu/chainfire/lumen/ui/SettingsFragment$g0;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-static/range {v8 .. v13}, Leu/chainfire/lumen/ui/b;->f(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, v0, Leu/chainfire/lumen/ui/SettingsFragment;->h:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0900c7

    invoke-static {v6, v1, v7}, Leu/chainfire/lumen/ui/b;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v10, 0x7f0900fe

    const/4 v11, 0x0

    const/4 v12, 0x1

    new-instance v13, Leu/chainfire/lumen/ui/SettingsFragment$h0;

    invoke-direct {v13, v0}, Leu/chainfire/lumen/ui/SettingsFragment$h0;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    move-object v9, v6

    invoke-static/range {v8 .. v13}, Leu/chainfire/lumen/ui/b;->f(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->i:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v10, 0x7f0900e4

    new-instance v13, Leu/chainfire/lumen/ui/SettingsFragment$i0;

    invoke-direct {v13, v0}, Leu/chainfire/lumen/ui/SettingsFragment$i0;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-static/range {v8 .. v13}, Leu/chainfire/lumen/ui/b;->f(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->j:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v10, 0x7f0900e1

    new-instance v13, Leu/chainfire/lumen/ui/SettingsFragment$j0;

    invoke-direct {v13, v0}, Leu/chainfire/lumen/ui/SettingsFragment$j0;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-static/range {v8 .. v13}, Leu/chainfire/lumen/ui/b;->f(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->k:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v10, 0x7f0900e8

    new-instance v13, Leu/chainfire/lumen/ui/SettingsFragment$k0;

    invoke-direct {v13, v0}, Leu/chainfire/lumen/ui/SettingsFragment$k0;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-static/range {v8 .. v13}, Leu/chainfire/lumen/ui/b;->f(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->l:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v10, 0x7f0900e6

    new-instance v13, Leu/chainfire/lumen/ui/SettingsFragment$l0;

    invoke-direct {v13, v0}, Leu/chainfire/lumen/ui/SettingsFragment$l0;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-static/range {v8 .. v13}, Leu/chainfire/lumen/ui/b;->f(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->m:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v10, 0x7f09010a

    new-instance v13, Leu/chainfire/lumen/ui/SettingsFragment$m0;

    invoke-direct {v13, v0}, Leu/chainfire/lumen/ui/SettingsFragment$m0;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-static/range {v8 .. v13}, Leu/chainfire/lumen/ui/b;->f(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->n:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v10, 0x7f090108

    new-instance v13, Leu/chainfire/lumen/ui/SettingsFragment$a;

    invoke-direct {v13, v0}, Leu/chainfire/lumen/ui/SettingsFragment$a;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-static/range {v8 .. v13}, Leu/chainfire/lumen/ui/b;->f(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->o:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v10, 0x7f09010c

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->w:Leu/chainfire/lumen/a$c;

    iget-object v12, v7, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {v7}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static/range {v8 .. v13}, Leu/chainfire/lumen/ui/b;->b(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    iput-object v6, v0, Leu/chainfire/lumen/ui/SettingsFragment;->p:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0900c3

    invoke-static {v6, v1, v7}, Leu/chainfire/lumen/ui/b;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v10, 0x7f0900f0

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->x:Leu/chainfire/lumen/a$c;

    iget-object v12, v7, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    iget-boolean v7, v7, Leu/chainfire/lumen/a$c;->d:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object v9, v6

    invoke-static/range {v8 .. v13}, Leu/chainfire/lumen/ui/b;->b(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    iput-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->q:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v10, 0x7f0900f3

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->y:Leu/chainfire/lumen/a$c;

    iget-object v12, v7, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    iget-boolean v7, v7, Leu/chainfire/lumen/a$c;->d:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static/range {v8 .. v13}, Leu/chainfire/lumen/ui/b;->b(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    iput-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->r:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v10, 0x7f0900f5

    const v11, 0x7f0900f4

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->z:Leu/chainfire/lumen/a$c;

    iget-object v12, v7, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    iget-boolean v7, v7, Leu/chainfire/lumen/a$c;->d:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static/range {v8 .. v13}, Leu/chainfire/lumen/ui/b;->b(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    iput-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->s:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v10, 0x7f0900ee

    const v11, 0x7f0900ed

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->A:Leu/chainfire/lumen/a$c;

    iget-object v12, v7, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    iget-boolean v7, v7, Leu/chainfire/lumen/a$c;->d:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static/range {v8 .. v13}, Leu/chainfire/lumen/ui/b;->b(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    iput-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->t:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v10, 0x7f0900c2

    const/4 v11, 0x0

    const/4 v12, 0x1

    new-instance v13, Leu/chainfire/lumen/ui/SettingsFragment$b;

    invoke-direct {v13, v0}, Leu/chainfire/lumen/ui/SettingsFragment$b;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-static/range {v8 .. v13}, Leu/chainfire/lumen/ui/b;->f(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, v0, Leu/chainfire/lumen/ui/SettingsFragment;->u:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0900c6

    invoke-static {v6, v1, v7}, Leu/chainfire/lumen/ui/b;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v10, 0x7f090106

    const v12, 0x7f090106

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->E:Leu/chainfire/lumen/a$k;

    iget-object v13, v7, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    iget-object v14, v7, Leu/chainfire/lumen/a$k;->d:Ljava/lang/String;

    const/4 v7, 0x3

    new-array v15, v7, [Ljava/lang/String;

    const v9, 0x7f090101

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v5

    const v5, 0x7f090102

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v4

    const v4, 0x7f090105

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x2

    aput-object v16, v15, v19

    const-string v4, "always"

    const-string v5, "demand"

    const-string v7, "never"

    filled-new-array {v4, v5, v7}, [Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move-object v9, v6

    invoke-static/range {v8 .. v17}, Leu/chainfire/lumen/ui/b;->e(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v8

    iput-object v8, v0, Leu/chainfire/lumen/ui/SettingsFragment;->v:Landroid/preference/ListPreference;

    if-eqz v2, :cond_3

    new-instance v2, Leu/chainfire/lumen/ui/SettingsFragment$c;

    invoke-direct {v2, v0}, Leu/chainfire/lumen/ui/SettingsFragment$c;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-virtual {v8, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v10, 0x7f090104

    const/4 v11, 0x0

    const v12, 0x7f090104

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v2, v2, Leu/chainfire/lumen/a;->F:Leu/chainfire/lumen/a$k;

    iget-object v13, v2, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    iget-object v14, v2, Leu/chainfire/lumen/a$k;->d:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v15, v2, [Ljava/lang/String;

    const v2, 0x7f090101

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v15, v9

    const v2, 0x7f090102

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    aput-object v2, v15, v9

    const v2, 0x7f090105

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v19

    filled-new-array {v4, v5, v7}, [Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move-object v9, v6

    invoke-static/range {v8 .. v17}, Leu/chainfire/lumen/ui/b;->e(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->w:Landroid/preference/ListPreference;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_4

    new-instance v5, Leu/chainfire/lumen/ui/SettingsFragment$d;

    invoke-direct {v5, v0}, Leu/chainfire/lumen/ui/SettingsFragment$d;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f0900c5

    invoke-static {v2, v1, v5}, Leu/chainfire/lumen/ui/b;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v8, 0x7f09010e

    const/4 v9, 0x0

    iget-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v5, v5, Leu/chainfire/lumen/a;->G:Leu/chainfire/lumen/a$c;

    iget-object v10, v5, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    iget-boolean v5, v5, Leu/chainfire/lumen/a$c;->d:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object v7, v2

    invoke-static/range {v6 .. v11}, Leu/chainfire/lumen/ui/b;->b(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->x:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v8, 0x7f0900de

    const/4 v10, 0x1

    new-instance v11, Leu/chainfire/lumen/ui/SettingsFragment$e;

    invoke-direct {v11, v0}, Leu/chainfire/lumen/ui/SettingsFragment$e;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-static/range {v6 .. v11}, Leu/chainfire/lumen/ui/b;->f(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, v0, Leu/chainfire/lumen/ui/SettingsFragment;->y:Landroid/preference/Preference;

    const/16 v5, 0x14

    const v6, 0x7f090112

    const v7, 0x7f090111

    const v8, 0x7f090110

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const v12, 0x7f090114

    const v13, 0x7f090113

    const v14, 0x7f09010f

    if-ge v4, v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v16, 0x7f090119

    iget-object v15, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v15, v15, Leu/chainfire/lumen/a;->H:Leu/chainfire/lumen/a$k;

    iget-object v5, v15, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    iget-object v15, v15, Leu/chainfire/lumen/a$k;->d:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x0

    aput-object v14, v9, v18

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v9, v14

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v19

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v9, v12

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v11

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    const-string v21, "dark"

    const-string v22, "light"

    const-string v23, "light_dab"

    const-string v24, "device"

    const-string v25, "device_light"

    const-string v26, "device_light_dab"

    filled-new-array/range {v21 .. v26}, [Ljava/lang/String;

    move-result-object v14

    const/16 v20, 0x1

    move-object v6, v4

    move-object v7, v2

    const v4, 0x7f090118

    move v8, v4

    move-object v13, v9

    const/4 v4, 0x0

    move v9, v4

    move/from16 v10, v16

    move-object v11, v5

    move-object v12, v15

    move/from16 v15, v20

    invoke-static/range {v6 .. v15}, Leu/chainfire/lumen/ui/b;->e(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v4

    goto/16 :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v16, 0x7f090119

    iget-object v15, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v15, v15, Leu/chainfire/lumen/a;->H:Leu/chainfire/lumen/a$k;

    iget-object v5, v15, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    iget-object v15, v15, Leu/chainfire/lumen/a$k;->d:Ljava/lang/String;

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x0

    aput-object v14, v6, v18

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v6, v14

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v19

    const v12, 0x7f090115

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v6, v13

    const v12, 0x7f090116

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v11

    const v11, 0x7f090117

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    const/4 v8, 0x7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const/16 v7, 0x8

    const v8, 0x7f090112

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v21, "dark"

    const-string v22, "light"

    const-string v23, "light_dab"

    const-string v24, "material_dark"

    const-string v25, "material_light"

    const-string v26, "material_light_dab"

    const-string v27, "device"

    const-string v28, "device_light"

    const-string v29, "device_light_dab"

    filled-new-array/range {v21 .. v29}, [Ljava/lang/String;

    move-result-object v14

    const/16 v20, 0x1

    move-object v13, v6

    move-object v6, v4

    move-object v7, v2

    const v4, 0x7f090118

    move v8, v4

    const/4 v4, 0x0

    move v9, v4

    move/from16 v10, v16

    move-object v11, v5

    move-object v12, v15

    move/from16 v15, v20

    invoke-static/range {v6 .. v15}, Leu/chainfire/lumen/ui/b;->e(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v4

    :goto_3
    iput-object v4, v0, Leu/chainfire/lumen/ui/SettingsFragment;->z:Landroid/preference/ListPreference;

    iget-object v4, v0, Leu/chainfire/lumen/ui/SettingsFragment;->z:Landroid/preference/ListPreference;

    new-instance v5, Leu/chainfire/lumen/ui/SettingsFragment$f;

    invoke-direct {v5, v0}, Leu/chainfire/lumen/ui/SettingsFragment$f;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-boolean v4, v0, Leu/chainfire/lumen/ui/SettingsFragment;->e:Z

    if-eqz v4, :cond_b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const v6, 0x7f0900ca

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "cflumen"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v6, v0, Leu/chainfire/lumen/ui/SettingsFragment;->f:Z

    if-eqz v6, :cond_6

    const v6, 0x7f0900d1

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "kcal"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-boolean v6, v0, Leu/chainfire/lumen/ui/SettingsFragment;->g:Z

    if-eqz v6, :cond_7

    const v6, 0x7f0900d9

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "pccrgb"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-boolean v6, v0, Leu/chainfire/lumen/ui/SettingsFragment;->I:Z

    if-eqz v6, :cond_8

    const v6, 0x7f0900db

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "rootless"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v8, 0x7f0900dc

    const/4 v9, 0x0

    const v10, 0x7f0900dc

    iget-object v7, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v7, v7, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    iget-object v11, v7, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    iget-object v12, v7, Leu/chainfire/lumen/a$k;->d:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, [Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, [Ljava/lang/CharSequence;

    move-object v7, v2

    invoke-static/range {v6 .. v14}, Leu/chainfire/lumen/ui/b;->d(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/preference/ListPreference;

    move-result-object v4

    iput-object v4, v0, Leu/chainfire/lumen/ui/SettingsFragment;->A:Landroid/preference/Preference;

    new-instance v5, Leu/chainfire/lumen/ui/SettingsFragment$g;

    invoke-direct {v5, v0}, Leu/chainfire/lumen/ui/SettingsFragment$g;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-boolean v4, v0, Leu/chainfire/lumen/ui/SettingsFragment;->J:Z

    const-string v5, "compatibility"

    if-eqz v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v8, 0x7f0900cf

    const/4 v9, 0x0

    const v10, 0x7f0900cf

    iget-object v4, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v4, v4, Leu/chainfire/lumen/a;->N:Leu/chainfire/lumen/a$k;

    iget-object v11, v4, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    iget-object v12, v4, Leu/chainfire/lumen/a$k;->d:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v13, v4, [Ljava/lang/CharSequence;

    const v7, 0x7f0900cc

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const v7, 0x7f0900cb

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x1

    aput-object v7, v13, v15

    const v7, 0x7f0900ce

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v13, v19

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v5, v4, v14

    const-string v5, "anti_flicker"

    aput-object v5, v4, v15

    const-string v5, "performance"

    aput-object v5, v4, v19

    move-object v7, v2

    move-object v14, v4

    invoke-static/range {v6 .. v14}, Leu/chainfire/lumen/ui/b;->d(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/preference/ListPreference;

    move-result-object v4

    iput-object v4, v0, Leu/chainfire/lumen/ui/SettingsFragment;->B:Landroid/preference/ListPreference;

    new-instance v5, Leu/chainfire/lumen/ui/SettingsFragment$h;

    invoke-direct {v5, v0}, Leu/chainfire/lumen/ui/SettingsFragment$h;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v8, 0x7f090013

    const v9, 0x7f090011

    const/4 v10, 0x1

    new-instance v11, Leu/chainfire/lumen/ui/SettingsFragment$i;

    invoke-direct {v11, v0}, Leu/chainfire/lumen/ui/SettingsFragment$i;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-static/range {v6 .. v11}, Leu/chainfire/lumen/ui/b;->f(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    goto :goto_4

    :cond_9
    iget-object v4, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v4, v4, Leu/chainfire/lumen/a;->N:Leu/chainfire/lumen/a$k;

    invoke-virtual {v4}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v4, v4, Leu/chainfire/lumen/a;->N:Leu/chainfire/lumen/a$k;

    invoke-virtual {v4, v5}, Leu/chainfire/lumen/a$k;->d(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Leu/chainfire/lumen/ui/SettingsFragment;->J(Ljava/lang/String;)V

    :cond_a
    :goto_4
    iget-boolean v4, v0, Leu/chainfire/lumen/ui/SettingsFragment;->f:Z

    if-eqz v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-instance v11, Leu/chainfire/lumen/ui/SettingsFragment$j;

    invoke-direct {v11, v0}, Leu/chainfire/lumen/ui/SettingsFragment$j;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    move-object v7, v2

    invoke-static/range {v6 .. v11}, Leu/chainfire/lumen/ui/b;->f(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, v0, Leu/chainfire/lumen/ui/SettingsFragment;->C:Landroid/preference/Preference;

    :cond_b
    if-nez v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v8, 0x7f0900ea

    const v9, 0x7f0900e9

    iget-object v4, v0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object v4, v4, Leu/chainfire/lumen/a;->Q:Leu/chainfire/lumen/a$c;

    iget-object v10, v4, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    iget-boolean v4, v4, Leu/chainfire/lumen/a$c;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object v7, v2

    invoke-static/range {v6 .. v11}, Leu/chainfire/lumen/ui/b;->b(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    new-instance v4, Leu/chainfire/lumen/ui/SettingsFragment$l;

    invoke-direct {v4, v0}, Leu/chainfire/lumen/ui/SettingsFragment$l;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f0900c4

    invoke-static {v2, v1, v4}, Leu/chainfire/lumen/ui/b;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f0900ff

    const v8, 0x7f090100

    const/4 v9, 0x1

    new-instance v10, Leu/chainfire/lumen/ui/SettingsFragment$m;

    invoke-direct {v10, v0}, Leu/chainfire/lumen/ui/SettingsFragment$m;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    move-object v6, v2

    invoke-static/range {v5 .. v10}, Leu/chainfire/lumen/ui/b;->f(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f09008d

    const v8, 0x7f09008c

    new-instance v10, Leu/chainfire/lumen/ui/SettingsFragment$n;

    invoke-direct {v10, v0}, Leu/chainfire/lumen/ui/SettingsFragment$n;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-static/range {v5 .. v10}, Leu/chainfire/lumen/ui/b;->f(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Leu/chainfire/lumen/ui/SettingsFragment;->P(Ljava/lang/String;)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->E:Leu/chainfire/lumen/ui/a;

    new-instance v4, Leu/chainfire/lumen/ui/SettingsFragment$o;

    invoke-direct {v4, v0}, Leu/chainfire/lumen/ui/SettingsFragment$o;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-virtual {v2, v4}, Leu/chainfire/lumen/ui/a;->e(Leu/chainfire/lumen/ui/a$k;)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->E:Leu/chainfire/lumen/ui/a;

    new-instance v4, Leu/chainfire/lumen/ui/SettingsFragment$p;

    invoke-direct {v4, v0}, Leu/chainfire/lumen/ui/SettingsFragment$p;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-virtual {v2, v4}, Leu/chainfire/lumen/ui/a;->e(Leu/chainfire/lumen/ui/a$k;)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->E:Leu/chainfire/lumen/ui/a;

    new-instance v4, Leu/chainfire/lumen/ui/SettingsFragment$q;

    invoke-direct {v4, v0}, Leu/chainfire/lumen/ui/SettingsFragment$q;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-virtual {v2, v4}, Leu/chainfire/lumen/ui/a;->e(Leu/chainfire/lumen/ui/a$k;)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->E:Leu/chainfire/lumen/ui/a;

    new-instance v4, Leu/chainfire/lumen/ui/SettingsFragment$r;

    invoke-direct {v4, v0}, Leu/chainfire/lumen/ui/SettingsFragment$r;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-virtual {v2, v4}, Leu/chainfire/lumen/ui/a;->e(Leu/chainfire/lumen/ui/a$k;)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->E:Leu/chainfire/lumen/ui/a;

    new-instance v4, Leu/chainfire/lumen/ui/SettingsFragment$s;

    invoke-direct {v4, v0, v3}, Leu/chainfire/lumen/ui/SettingsFragment$s;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;Z)V

    invoke-virtual {v2, v4}, Leu/chainfire/lumen/ui/a;->e(Leu/chainfire/lumen/ui/a$k;)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->E:Leu/chainfire/lumen/ui/a;

    new-instance v4, Leu/chainfire/lumen/ui/SettingsFragment$t;

    invoke-direct {v4, v0}, Leu/chainfire/lumen/ui/SettingsFragment$t;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-virtual {v2, v4}, Leu/chainfire/lumen/ui/a;->e(Leu/chainfire/lumen/ui/a$k;)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->E:Leu/chainfire/lumen/ui/a;

    new-instance v4, Leu/chainfire/lumen/ui/SettingsFragment$u;

    invoke-direct {v4, v0}, Leu/chainfire/lumen/ui/SettingsFragment$u;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;)V

    invoke-virtual {v2, v4}, Leu/chainfire/lumen/ui/a;->e(Leu/chainfire/lumen/ui/a$k;)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->E:Leu/chainfire/lumen/ui/a;

    new-instance v4, Leu/chainfire/lumen/ui/SettingsFragment$w;

    invoke-direct {v4, v0, v3}, Leu/chainfire/lumen/ui/SettingsFragment$w;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;Z)V

    invoke-virtual {v2, v4}, Leu/chainfire/lumen/ui/a;->e(Leu/chainfire/lumen/ui/a$k;)V

    iget-object v2, v0, Leu/chainfire/lumen/ui/SettingsFragment;->E:Leu/chainfire/lumen/ui/a;

    invoke-virtual {v2}, Leu/chainfire/lumen/ui/a;->d()V

    return-object v1
.end method


# virtual methods
.method public B()V
    .locals 8

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment;->F:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->F:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "purchase.1"

    const-string v5, "inapp"

    const-string v6, ""

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/16 v3, 0x3e9

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    const-string p2, "RESPONSE_CODE"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    const-string p1, "\"purchase.1\""

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    invoke-virtual {p1}, Leu/chainfire/lumen/a;->j()V

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Leu/chainfire/lumen/services/BackgroundService;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, Leu/chainfire/lumen/ui/SettingsFragment$f0;

    invoke-direct {p3, p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment$f0;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/16 p2, 0x3ea

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->k:Leu/chainfire/lumen/a$c;

    invoke-virtual {p1}, Leu/chainfire/lumen/a$c;->c()Z

    move-result p1

    iget-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object p2, p2, Leu/chainfire/lumen/a;->k:Leu/chainfire/lumen/a$c;

    xor-int/lit8 p3, p1, 0x1

    invoke-virtual {p2, p3}, Leu/chainfire/lumen/a$c;->d(Z)V

    iget-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    iget-object p2, p2, Leu/chainfire/lumen/a;->k:Leu/chainfire/lumen/a$c;

    invoke-virtual {p2, p1}, Leu/chainfire/lumen/a$c;->d(Z)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->E:Leu/chainfire/lumen/ui/a;

    invoke-virtual {p1}, Leu/chainfire/lumen/ui/a;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Leu/chainfire/lumen/drivers/d;->x(Landroid/content/Context;)Leu/chainfire/lumen/drivers/d;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->d:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Leu/chainfire/lumen/a;->e(Landroid/content/Context;)Leu/chainfire/lumen/a;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->c:Leu/chainfire/lumen/a;

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.vending"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->K:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->G:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Leu/chainfire/lumen/ui/a;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Leu/chainfire/lumen/ui/a;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment;->E:Leu/chainfire/lumen/ui/a;

    new-instance p1, Leu/chainfire/lumen/ui/SettingsFragment$p0;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Leu/chainfire/lumen/ui/SettingsFragment$p0;-><init>(Leu/chainfire/lumen/ui/SettingsFragment;Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p2}, Leu/chainfire/lumen/ui/SettingsFragment;->P(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
