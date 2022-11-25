.class public Leu/chainfire/lumen/Application;
.super Landroid/app/Application;
.source ""


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/Application;->a:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/lumen/Application;->b:Z

    iput-boolean v0, p0, Leu/chainfire/lumen/Application;->c:Z

    return-void
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Leu/chainfire/lumen/Application;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "CF.lumen"

    :cond_0
    invoke-static {p0}, Leu/chainfire/librootjava/d;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p0}, Leu/chainfire/librootjava/d;->e(Z)V

    invoke-static {p0}, Lc/a/a/a;->i(Z)V

    const v0, 0xffff

    invoke-static {v0, p0}, Lc/a/a/a;->j(IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/Application;->a:Ljava/lang/Integer;

    return-void
.end method

.method public b()I
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    iget-object v0, p0, Leu/chainfire/lumen/Application;->a:Ljava/lang/Integer;

    if-nez v0, :cond_9

    new-instance v0, Leu/chainfire/lumen/a;

    invoke-direct {v0, p0}, Leu/chainfire/lumen/a;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Leu/chainfire/lumen/a;->H:Leu/chainfire/lumen/a$k;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const v2, 0x1030119

    const v3, 0x1030238

    const/16 v4, 0x14

    if-ge v1, v4, :cond_0

    const v5, 0x1030119

    goto :goto_0

    :cond_0
    const v5, 0x1030238

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Leu/chainfire/lumen/Application;->a:Ljava/lang/Integer;

    const/4 v5, 0x0

    iput-boolean v5, p0, Leu/chainfire/lumen/Application;->b:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Leu/chainfire/lumen/Application;->c:Z

    const-string v7, "dark"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const v0, 0x103006b

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/lumen/Application;->a:Ljava/lang/Integer;

    iput-boolean v6, p0, Leu/chainfire/lumen/Application;->b:Z

    :goto_2
    iput-boolean v6, p0, Leu/chainfire/lumen/Application;->c:Z

    goto/16 :goto_5

    :cond_1
    const-string v7, "light"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v0, 0x103006e

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/lumen/Application;->a:Ljava/lang/Integer;

    iput-boolean v5, p0, Leu/chainfire/lumen/Application;->b:Z

    iput-boolean v5, p0, Leu/chainfire/lumen/Application;->c:Z

    goto :goto_5

    :cond_2
    const-string v7, "light_dab"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Leu/chainfire/lumen/Application;->a:Ljava/lang/Integer;

    iput-boolean v5, p0, Leu/chainfire/lumen/Application;->b:Z

    goto :goto_2

    :cond_3
    const-string v2, "material_dark"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-lt v1, v4, :cond_4

    const v0, 0x1030224

    goto :goto_1

    :cond_4
    const-string v2, "material_light"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-lt v1, v4, :cond_5

    const v0, 0x1030237

    goto :goto_3

    :cond_5
    const-string v2, "material_light_dab"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-lt v1, v4, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_6
    const-string v1, "device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0x1030128

    goto :goto_1

    :cond_7
    const-string v1, "device_light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v0, 0x103012b

    goto :goto_3

    :cond_8
    const-string v1, "device_light_dab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x103013f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_9
    :goto_5
    iget-object v0, p0, Leu/chainfire/lumen/Application;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-virtual {p0}, Landroid/app/Application;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p0}, Leu/chainfire/lumen/Application;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x103006b

    goto :goto_0

    :cond_0
    const v1, 0x103006e

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x101030e

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :array_0
    .array-data 4
        0x101009e
        0x10100a1
        0x10100a7
    .end array-data
.end method

.method public f()Z
    .locals 1

    invoke-virtual {p0}, Leu/chainfire/lumen/Application;->b()I

    iget-boolean v0, p0, Leu/chainfire/lumen/Application;->b:Z

    return v0
.end method

.method public g()Z
    .locals 1

    invoke-virtual {p0}, Leu/chainfire/lumen/Application;->b()I

    iget-boolean v0, p0, Leu/chainfire/lumen/Application;->c:Z

    return v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {}, Leu/chainfire/lumen/Application;->d()V

    return-void
.end method
