.class public final Lb/a/a/a/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/a$d;


# static fields
.field public static final i:Lb/a/a/a/b/a;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Ljava/lang/Long;

.field private final h:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v9, Lb/a/a/a/b/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lb/a/a/a/b/a;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    sput-object v9, Lb/a/a/a/b/a;->i:Lb/a/a/a/b/a;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/a/a/a/b/a;->a:Z

    iput-boolean p1, p0, Lb/a/a/a/b/a;->b:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lb/a/a/a/b/a;->c:Ljava/lang/String;

    iput-boolean p1, p0, Lb/a/a/a/b/a;->d:Z

    iput-boolean p1, p0, Lb/a/a/a/b/a;->f:Z

    iput-object p2, p0, Lb/a/a/a/b/a;->e:Ljava/lang/String;

    iput-object p2, p0, Lb/a/a/a/b/a;->g:Ljava/lang/Long;

    iput-object p2, p0, Lb/a/a/a/b/a;->h:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/b/a;->g:Ljava/lang/Long;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/b/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/b/a;->h:Ljava/lang/Long;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lb/a/a/a/b/a;->d:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lb/a/a/a/b/a;->b:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lb/a/a/a/b/a;->a:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lb/a/a/a/b/a;->f:Z

    return v0
.end method
