.class public Leu/chainfire/lumen/b/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# instance fields
.field private A:Ljava/text/SimpleDateFormat;

.field private B:Ljava/text/SimpleDateFormat;

.field private C:Ljava/text/SimpleDateFormat;

.field private D:Ljava/text/SimpleDateFormat;

.field private E:D

.field private F:D

.field private G:D

.field private H:D

.field private I:D

.field private J:D

.field private K:D

.field private L:D

.field private M:D

.field private N:D

.field private O:D

.field private P:D

.field private Q:D

.field private R:D

.field private S:D

.field private T:D

.field private U:D

.field private V:D

.field private W:D

.field private X:D

.field private Y:D

.field private Z:D

.field private a:D

.field private a0:D

.field private b:D

.field private b0:D

.field private c:Ljava/util/Date;

.field private c0:D

.field private d:D

.field private d0:D

.field private e:Ljava/util/Date;

.field private e0:D

.field private f:Ljava/util/Date;

.field private f0:D

.field private g:Z

.field private g0:D

.field private h:Z

.field private h0:D

.field private i:Z

.field private i0:Ljava/util/TimeZone;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:D

.field private u:D

.field private v:D

.field private w:D

.field private x:D

.field private y:D

.field private z:D


# direct methods
.method constructor <init>(DDLjava/util/Date;D)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/lumen/b/a;->g:Z

    iput-boolean v0, p0, Leu/chainfire/lumen/b/a;->h:Z

    iput-boolean v0, p0, Leu/chainfire/lumen/b/a;->i:Z

    iput-boolean v0, p0, Leu/chainfire/lumen/b/a;->j:Z

    iput-boolean v0, p0, Leu/chainfire/lumen/b/a;->k:Z

    iput-boolean v0, p0, Leu/chainfire/lumen/b/a;->l:Z

    iput-boolean v0, p0, Leu/chainfire/lumen/b/a;->m:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leu/chainfire/lumen/b/a;->E:D

    iput-wide v0, p0, Leu/chainfire/lumen/b/a;->F:D

    iput-wide v0, p0, Leu/chainfire/lumen/b/a;->G:D

    iput-wide v0, p0, Leu/chainfire/lumen/b/a;->H:D

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/lumen/b/a;->i0:Ljava/util/TimeZone;

    iput-wide p1, p0, Leu/chainfire/lumen/b/a;->a:D

    iput-wide p3, p0, Leu/chainfire/lumen/b/a;->b:D

    iput-object p5, p0, Leu/chainfire/lumen/b/a;->c:Ljava/util/Date;

    iput-wide p6, p0, Leu/chainfire/lumen/b/a;->d:D

    invoke-direct {p0}, Leu/chainfire/lumen/b/a;->a()V

    return-void
.end method

.method private a()V
    .locals 29

    move-object/from16 v1, p0

    const/4 v2, 0x1

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Leu/chainfire/lumen/b/a;->B:Ljava/text/SimpleDateFormat;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    iget-object v0, v1, Leu/chainfire/lumen/b/a;->B:Ljava/text/SimpleDateFormat;

    iget-object v4, v1, Leu/chainfire/lumen/b/a;->i0:Ljava/util/TimeZone;

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "M"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Leu/chainfire/lumen/b/a;->C:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    iget-object v0, v1, Leu/chainfire/lumen/b/a;->C:Ljava/text/SimpleDateFormat;

    iget-object v4, v1, Leu/chainfire/lumen/b/a;->i0:Ljava/util/TimeZone;

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "d"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Leu/chainfire/lumen/b/a;->D:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    iget-object v0, v1, Leu/chainfire/lumen/b/a;->D:Ljava/text/SimpleDateFormat;

    iget-object v4, v1, Leu/chainfire/lumen/b/a;->i0:Ljava/util/TimeZone;

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v0, v1, Leu/chainfire/lumen/b/a;->B:Ljava/text/SimpleDateFormat;

    iget-object v4, v1, Leu/chainfire/lumen/b/a;->c:Ljava/util/Date;

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Leu/chainfire/lumen/b/a;->o:I

    iget-object v0, v1, Leu/chainfire/lumen/b/a;->C:Ljava/text/SimpleDateFormat;

    iget-object v4, v1, Leu/chainfire/lumen/b/a;->c:Ljava/util/Date;

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Leu/chainfire/lumen/b/a;->p:I

    iget-object v0, v1, Leu/chainfire/lumen/b/a;->D:Ljava/text/SimpleDateFormat;

    iget-object v4, v1, Leu/chainfire/lumen/b/a;->c:Ljava/util/Date;

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Leu/chainfire/lumen/b/a;->q:I

    iget-wide v4, v1, Leu/chainfire/lumen/b/a;->d:D

    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    div-double/2addr v4, v6

    iput-wide v4, v1, Leu/chainfire/lumen/b/a;->d:D

    neg-double v4, v4

    iput-wide v4, v1, Leu/chainfire/lumen/b/a;->d:D

    iget-wide v4, v1, Leu/chainfire/lumen/b/a;->b:D

    const-wide v8, 0x4076800000000000L    # 360.0

    div-double/2addr v4, v8

    iput-wide v4, v1, Leu/chainfire/lumen/b/a;->b:D

    iget v0, v1, Leu/chainfire/lumen/b/a;->o:I

    const/16 v4, 0x62f

    if-lt v0, v4, :cond_0

    iput-boolean v2, v1, Leu/chainfire/lumen/b/a;->m:Z

    :cond_0
    iget v0, v1, Leu/chainfire/lumen/b/a;->p:I

    int-to-double v4, v0

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    add-double/2addr v4, v8

    const-wide/high16 v10, 0x4028000000000000L    # 12.0

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    iget v0, v1, Leu/chainfire/lumen/b/a;->o:I

    int-to-double v10, v0

    add-double/2addr v4, v10

    const-wide/high16 v10, 0x401c000000000000L    # 7.0

    mul-double v4, v4, v10

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    div-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    neg-double v4, v4

    iget v0, v1, Leu/chainfire/lumen/b/a;->p:I

    int-to-double v14, v0

    const-wide v16, 0x4071300000000000L    # 275.0

    mul-double v14, v14, v16

    div-double/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    add-double/2addr v4, v14

    iget v0, v1, Leu/chainfire/lumen/b/a;->q:I

    int-to-double v14, v0

    add-double/2addr v4, v14

    const-wide v14, 0x413a42c300000000L    # 1721027.0

    add-double/2addr v4, v14

    iget v0, v1, Leu/chainfire/lumen/b/a;->o:I

    int-to-double v14, v0

    const-wide v16, 0x4076f00000000000L    # 367.0

    mul-double v14, v14, v16

    add-double/2addr v4, v14

    iput-wide v4, v1, Leu/chainfire/lumen/b/a;->L:D

    iget-boolean v0, v1, Leu/chainfire/lumen/b/a;->m:Z

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const-wide/16 v12, 0x0

    if-eqz v0, :cond_2

    iget v0, v1, Leu/chainfire/lumen/b/a;->p:I

    int-to-double v6, v0

    sub-double/2addr v6, v8

    cmpg-double v18, v6, v12

    if-gez v18, :cond_1

    const/4 v6, -0x1

    iput v6, v1, Leu/chainfire/lumen/b/a;->s:I

    goto :goto_0

    :cond_1
    iput v2, v1, Leu/chainfire/lumen/b/a;->s:I

    :goto_0
    int-to-double v6, v0

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iput-wide v6, v1, Leu/chainfire/lumen/b/a;->N:D

    iget v0, v1, Leu/chainfire/lumen/b/a;->o:I

    int-to-double v8, v0

    iget v0, v1, Leu/chainfire/lumen/b/a;->s:I

    int-to-double v12, v0

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    mul-double v12, v12, v6

    add-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    add-double/2addr v6, v4

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    neg-double v6, v6

    iput-wide v6, v1, Leu/chainfire/lumen/b/a;->M:D

    iget-wide v8, v1, Leu/chainfire/lumen/b/a;->L:D

    add-double/2addr v8, v6

    add-double/2addr v8, v14

    iput-wide v8, v1, Leu/chainfire/lumen/b/a;->L:D

    :cond_2
    iget-wide v6, v1, Leu/chainfire/lumen/b/a;->L:D

    double-to-int v0, v6

    sub-int/2addr v0, v2

    iput v0, v1, Leu/chainfire/lumen/b/a;->n:I

    int-to-double v6, v0

    const-wide v8, 0x4142b42c80000000L    # 2451545.0

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    iput-wide v6, v1, Leu/chainfire/lumen/b/a;->c0:D

    const-wide v8, 0x40e1d5a000000000L    # 36525.0

    div-double v10, v6, v8

    add-double/2addr v10, v4

    iput-wide v10, v1, Leu/chainfire/lumen/b/a;->e0:D

    const-wide v10, 0x41607ad71a041893L    # 8640184.813

    mul-double v6, v6, v10

    div-double/2addr v6, v8

    const-wide v8, 0x40d78ba000000000L    # 24110.5

    add-double/2addr v6, v8

    iget-wide v8, v1, Leu/chainfire/lumen/b/a;->d:D

    const-wide v10, 0x40f526c99999999aL    # 86636.6

    mul-double v8, v8, v10

    add-double/2addr v6, v8

    iget-wide v8, v1, Leu/chainfire/lumen/b/a;->b:D

    const-wide v10, 0x40f5180000000000L    # 86400.0

    mul-double v8, v8, v10

    add-double/2addr v6, v8

    div-double/2addr v6, v10

    iput-wide v6, v1, Leu/chainfire/lumen/b/a;->d0:D

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    iput-wide v6, v1, Leu/chainfire/lumen/b/a;->d0:D

    mul-double v6, v6, v14

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v8

    iput-wide v6, v1, Leu/chainfire/lumen/b/a;->d0:D

    iget-wide v6, v1, Leu/chainfire/lumen/b/a;->c0:D

    iget-wide v10, v1, Leu/chainfire/lumen/b/a;->d:D

    add-double/2addr v6, v10

    iput-wide v6, v1, Leu/chainfire/lumen/b/a;->c0:D

    iput v3, v1, Leu/chainfire/lumen/b/a;->r:I

    :goto_1
    iget v0, v1, Leu/chainfire/lumen/b/a;->r:I

    if-gt v0, v2, :cond_4

    const-wide v6, 0x3fe8ee2867275686L    # 0.779072

    const-wide v10, 0x3f666dcfde44846cL    # 0.00273790931

    iget-wide v12, v1, Leu/chainfire/lumen/b/a;->c0:D

    mul-double v12, v12, v10

    add-double/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    sub-double/2addr v12, v6

    mul-double v12, v12, v14

    mul-double v12, v12, v8

    const-wide v6, 0x3fefc7b02d59d55eL    # 0.993126

    const-wide v10, 0x3f666d89a3e0cde9L    # 0.0027377785

    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->c0:D

    mul-double v2, v2, v10

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    sub-double/2addr v2, v6

    mul-double v2, v2, v14

    mul-double v2, v2, v8

    const-wide v6, 0x3fd9765fd8adab9fL    # 0.39785

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v10, v10, v6

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    sub-double v19, v12, v2

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v19, v19, v6

    sub-double v10, v10, v19

    const-wide v6, 0x3f6b4784230fcf81L    # 0.00333

    add-double v19, v12, v2

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v19, v19, v6

    add-double v10, v10, v19

    const-wide v6, 0x3f2b866e43aa79bcL    # 2.1E-4

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v19, v19, v6

    iget-wide v6, v1, Leu/chainfire/lumen/b/a;->e0:D

    mul-double v19, v19, v6

    sub-double v10, v10, v19

    const-wide v6, 0x3fa12599ed7c6fbdL    # 0.03349

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v6

    sub-double v6, v4, v19

    const-wide v19, 0x3f22599ed7c6fbd2L    # 1.4E-4

    mul-double v21, v12, v14

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v23, v23, v19

    sub-double v6, v6, v23

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    const-wide v23, 0x3f14f8b588e368f1L    # 8.0E-5

    mul-double v19, v19, v23

    add-double v6, v6, v19

    const-wide v19, -0x40e5c91d14e3bcd3L    # -1.0E-4

    const-wide v25, 0x3fa523f67f4dbdf9L    # 0.04129

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v27, v27, v25

    sub-double v19, v19, v27

    const-wide v25, 0x3fa070b8cfbfc654L    # 0.03211

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v27, v27, v25

    add-double v19, v19, v27

    const-wide v25, 0x3f510a137f38c543L    # 0.00104

    sub-double v27, v21, v2

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v27, v27, v25

    sub-double v19, v19, v27

    const-wide v25, 0x3f36f0068db8bac7L    # 3.5E-4

    add-double v21, v21, v2

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v21, v21, v25

    sub-double v19, v19, v21

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v23

    iget-wide v14, v1, Leu/chainfire/lumen/b/a;->e0:D

    mul-double v2, v2, v14

    sub-double v19, v19, v2

    mul-double v2, v10, v10

    sub-double v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double v19, v19, v2

    mul-double v2, v19, v19

    sub-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double v19, v19, v2

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    add-double/2addr v12, v2

    iput-wide v12, v1, Leu/chainfire/lumen/b/a;->Q:D

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v10, v2

    mul-double v2, v10, v10

    sub-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->U:D

    iget v6, v1, Leu/chainfire/lumen/b/a;->r:I

    if-nez v6, :cond_3

    iget-wide v10, v1, Leu/chainfire/lumen/b/a;->Q:D

    iput-wide v10, v1, Leu/chainfire/lumen/b/a;->E:D

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->G:D

    goto :goto_2

    :cond_3
    iget-wide v10, v1, Leu/chainfire/lumen/b/a;->Q:D

    iput-wide v10, v1, Leu/chainfire/lumen/b/a;->F:D

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->H:D

    :goto_2
    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->c0:D

    add-double/2addr v2, v4

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->c0:D

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Leu/chainfire/lumen/b/a;->r:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    goto/16 :goto_1

    :cond_4
    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->F:D

    iget-wide v6, v1, Leu/chainfire/lumen/b/a;->E:D

    cmpg-double v10, v2, v6

    if-gez v10, :cond_5

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v2, v6

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->F:D

    :cond_5
    const-wide v2, 0x3ff95d882604e01bL    # 1.5853349194640092

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->z:D

    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->a:D

    mul-double v2, v2, v8

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->x:D

    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->a:D

    mul-double v2, v2, v8

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->y:D

    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->E:D

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->O:D

    iget-wide v6, v1, Leu/chainfire/lumen/b/a;->G:D

    iput-wide v6, v1, Leu/chainfire/lumen/b/a;->R:D

    iget-wide v8, v1, Leu/chainfire/lumen/b/a;->F:D

    sub-double/2addr v8, v2

    iput-wide v8, v1, Leu/chainfire/lumen/b/a;->V:D

    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->H:D

    sub-double/2addr v2, v6

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->W:D

    const-wide v2, 0x3fd0cd109d6d157aL    # 0.26251616834300473

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->J:D

    const-wide v2, 0x4058c00000000000L    # 99.0

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->t:D

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->v:D

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->u:D

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->w:D

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->f0:D

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->h0:D

    const/4 v0, 0x0

    iput v0, v1, Leu/chainfire/lumen/b/a;->r:I

    :goto_3
    iget v2, v1, Leu/chainfire/lumen/b/a;->r:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_11

    int-to-double v6, v2

    iput-wide v6, v1, Leu/chainfire/lumen/b/a;->I:D

    add-double v8, v6, v4

    const-wide/high16 v10, 0x4038000000000000L    # 24.0

    div-double/2addr v8, v10

    iput-wide v8, v1, Leu/chainfire/lumen/b/a;->K:D

    iget-wide v12, v1, Leu/chainfire/lumen/b/a;->E:D

    iget-wide v14, v1, Leu/chainfire/lumen/b/a;->V:D

    mul-double v14, v14, v8

    add-double/2addr v12, v14

    iput-wide v12, v1, Leu/chainfire/lumen/b/a;->P:D

    iget-wide v14, v1, Leu/chainfire/lumen/b/a;->G:D

    iget-wide v10, v1, Leu/chainfire/lumen/b/a;->W:D

    mul-double v8, v8, v10

    add-double/2addr v14, v8

    iput-wide v14, v1, Leu/chainfire/lumen/b/a;->T:D

    iget-wide v8, v1, Leu/chainfire/lumen/b/a;->d0:D

    iget-wide v10, v1, Leu/chainfire/lumen/b/a;->J:D

    mul-double v6, v6, v10

    add-double/2addr v8, v6

    iput-wide v8, v1, Leu/chainfire/lumen/b/a;->a0:D

    add-double/2addr v10, v8

    iput-wide v10, v1, Leu/chainfire/lumen/b/a;->b0:D

    iget-wide v6, v1, Leu/chainfire/lumen/b/a;->O:D

    sub-double/2addr v8, v6

    iput-wide v8, v1, Leu/chainfire/lumen/b/a;->X:D

    sub-double/2addr v10, v12

    iput-wide v10, v1, Leu/chainfire/lumen/b/a;->Z:D

    add-double/2addr v10, v8

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v6

    iput-wide v10, v1, Leu/chainfire/lumen/b/a;->Y:D

    iget-wide v8, v1, Leu/chainfire/lumen/b/a;->R:D

    add-double/2addr v14, v8

    div-double/2addr v14, v6

    iput-wide v14, v1, Leu/chainfire/lumen/b/a;->S:D

    if-nez v2, :cond_6

    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->x:D

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v2, v2, v6

    iget-wide v6, v1, Leu/chainfire/lumen/b/a;->y:D

    iget-wide v8, v1, Leu/chainfire/lumen/b/a;->R:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    iget-wide v8, v1, Leu/chainfire/lumen/b/a;->X:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    add-double/2addr v2, v6

    iget-wide v6, v1, Leu/chainfire/lumen/b/a;->z:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    sub-double/2addr v2, v6

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->f0:D

    goto :goto_4

    :cond_6
    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->h0:D

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->f0:D

    :goto_4
    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->x:D

    iget-wide v6, v1, Leu/chainfire/lumen/b/a;->T:D

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v2, v2, v6

    iget-wide v6, v1, Leu/chainfire/lumen/b/a;->y:D

    iget-wide v8, v1, Leu/chainfire/lumen/b/a;->T:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    iget-wide v8, v1, Leu/chainfire/lumen/b/a;->Z:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    add-double/2addr v2, v6

    iget-wide v6, v1, Leu/chainfire/lumen/b/a;->z:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    sub-double/2addr v2, v6

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->h0:D

    iget-wide v6, v1, Leu/chainfire/lumen/b/a;->f0:D

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-ltz v10, :cond_7

    cmpl-double v10, v2, v8

    if-gez v10, :cond_8

    :cond_7
    cmpg-double v10, v6, v8

    if-gez v10, :cond_9

    cmpg-double v6, v2, v8

    if-gez v6, :cond_9

    :cond_8
    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->P:D

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->O:D

    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->T:D

    :goto_5
    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->R:D

    const/4 v0, 0x0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    goto/16 :goto_6

    :cond_9
    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->x:D

    iget-wide v6, v1, Leu/chainfire/lumen/b/a;->S:D

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v2, v2, v6

    iget-wide v6, v1, Leu/chainfire/lumen/b/a;->y:D

    iget-wide v8, v1, Leu/chainfire/lumen/b/a;->S:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    iget-wide v8, v1, Leu/chainfire/lumen/b/a;->Y:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    add-double/2addr v2, v6

    iget-wide v6, v1, Leu/chainfire/lumen/b/a;->z:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    sub-double/2addr v2, v6

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->g0:D

    iget-wide v6, v1, Leu/chainfire/lumen/b/a;->h0:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v14, v6, v8

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    mul-double v12, v2, v10

    sub-double/2addr v14, v12

    iget-wide v12, v1, Leu/chainfire/lumen/b/a;->f0:D

    mul-double v16, v12, v8

    add-double v14, v14, v16

    mul-double v2, v2, v10

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double v8, v8, v12

    sub-double/2addr v2, v8

    sub-double/2addr v2, v6

    mul-double v6, v2, v2

    mul-double v8, v14, v10

    mul-double v8, v8, v12

    sub-double/2addr v6, v8

    const-wide/16 v8, 0x0

    cmpg-double v12, v6, v8

    if-gez v12, :cond_a

    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->P:D

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->O:D

    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->T:D

    goto :goto_5

    :cond_a
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const/4 v0, 0x0

    iput-boolean v0, v1, Leu/chainfire/lumen/b/a;->k:Z

    iput-boolean v0, v1, Leu/chainfire/lumen/b/a;->l:Z

    iget-wide v8, v1, Leu/chainfire/lumen/b/a;->f0:D

    const-wide/16 v12, 0x0

    cmpg-double v16, v8, v12

    if-gez v16, :cond_b

    iget-wide v10, v1, Leu/chainfire/lumen/b/a;->h0:D

    cmpl-double v19, v10, v12

    if-lez v19, :cond_b

    const/4 v10, 0x1

    iput-boolean v10, v1, Leu/chainfire/lumen/b/a;->k:Z

    iput-boolean v10, v1, Leu/chainfire/lumen/b/a;->g:Z

    :cond_b
    const-wide/16 v10, 0x0

    cmpl-double v12, v8, v10

    if-lez v12, :cond_c

    iget-wide v8, v1, Leu/chainfire/lumen/b/a;->h0:D

    cmpg-double v12, v8, v10

    if-gez v12, :cond_c

    const/4 v8, 0x1

    iput-boolean v8, v1, Leu/chainfire/lumen/b/a;->l:Z

    iput-boolean v8, v1, Leu/chainfire/lumen/b/a;->h:Z

    :cond_c
    sub-double v8, v6, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v10

    div-double/2addr v8, v14

    cmpl-double v12, v8, v4

    if-gtz v12, :cond_d

    const-wide/16 v12, 0x0

    cmpg-double v19, v8, v12

    if-gez v19, :cond_e

    :cond_d
    neg-double v6, v6

    sub-double/2addr v6, v2

    div-double v8, v6, v14

    :cond_e
    iget-boolean v2, v1, Leu/chainfire/lumen/b/a;->k:Z

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    const-wide v12, 0x3f81111111111111L    # 0.008333333333333333

    if-eqz v2, :cond_f

    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->I:D

    add-double/2addr v2, v8

    add-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->t:D

    iget-wide v14, v1, Leu/chainfire/lumen/b/a;->I:D

    add-double/2addr v14, v8

    add-double/2addr v14, v12

    sub-double/2addr v14, v2

    mul-double v14, v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->v:D

    :cond_f
    iget-boolean v2, v1, Leu/chainfire/lumen/b/a;->l:Z

    if-eqz v2, :cond_10

    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->I:D

    add-double/2addr v2, v8

    add-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->u:D

    iget-wide v14, v1, Leu/chainfire/lumen/b/a;->I:D

    add-double/2addr v14, v8

    add-double/2addr v14, v12

    sub-double/2addr v14, v2

    mul-double v14, v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->w:D

    :cond_10
    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->P:D

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->O:D

    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->T:D

    iput-wide v2, v1, Leu/chainfire/lumen/b/a;->R:D

    :goto_6
    iget v2, v1, Leu/chainfire/lumen/b/a;->r:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Leu/chainfire/lumen/b/a;->r:I

    goto/16 :goto_3

    :cond_11
    iget-boolean v0, v1, Leu/chainfire/lumen/b/a;->g:Z

    if-nez v0, :cond_13

    iget-boolean v0, v1, Leu/chainfire/lumen/b/a;->h:Z

    if-nez v0, :cond_13

    iget-wide v2, v1, Leu/chainfire/lumen/b/a;->h0:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    const/4 v2, 0x1

    if-gez v0, :cond_12

    iput-boolean v2, v1, Leu/chainfire/lumen/b/a;->j:Z

    goto :goto_7

    :cond_12
    iput-boolean v2, v1, Leu/chainfire/lumen/b/a;->i:Z

    :cond_13
    :goto_7
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "d M yyyy HH:mm z"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Leu/chainfire/lumen/b/a;->A:Ljava/text/SimpleDateFormat;

    iget-boolean v2, v1, Leu/chainfire/lumen/b/a;->g:Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, " GMT"

    const-string v4, ":"

    const-string v5, " "

    if-eqz v2, :cond_14

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Leu/chainfire/lumen/b/a;->q:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Leu/chainfire/lumen/b/a;->p:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Leu/chainfire/lumen/b/a;->o:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Leu/chainfire/lumen/b/a;->t:D

    double-to-int v6, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Leu/chainfire/lumen/b/a;->v:D

    double-to-int v6, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v1, Leu/chainfire/lumen/b/a;->e:Ljava/util/Date;

    :cond_14
    iget-boolean v0, v1, Leu/chainfire/lumen/b/a;->h:Z

    if-eqz v0, :cond_15

    iget-object v0, v1, Leu/chainfire/lumen/b/a;->A:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Leu/chainfire/lumen/b/a;->q:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Leu/chainfire/lumen/b/a;->p:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Leu/chainfire/lumen/b/a;->o:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Leu/chainfire/lumen/b/a;->u:D

    double-to-int v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Leu/chainfire/lumen/b/a;->w:D

    double-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v1, Leu/chainfire/lumen/b/a;->f:Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\nCannot parse date"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_15
    :goto_8
    return-void
.end method


# virtual methods
.method public b()Ljava/util/Date;
    .locals 1

    iget-boolean v0, p0, Leu/chainfire/lumen/b/a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/b/a;->e:Ljava/util/Date;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/util/Date;
    .locals 1

    iget-boolean v0, p0, Leu/chainfire/lumen/b/a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/b/a;->f:Ljava/util/Date;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Leu/chainfire/lumen/b/a;->j:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Leu/chainfire/lumen/b/a;->i:Z

    return v0
.end method
