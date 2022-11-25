.class final Lcom/google/android/gms/common/api/internal/d$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/t1<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/common/Feature;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/t1;Lcom/google/android/gms/common/Feature;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/t1<",
            "*>;",
            "Lcom/google/android/gms/common/Feature;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/d$b;->a:Lcom/google/android/gms/common/api/internal/t1;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/d$b;->b:Lcom/google/android/gms/common/Feature;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/t1;Lcom/google/android/gms/common/Feature;Lcom/google/android/gms/common/api/internal/q0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/d$b;-><init>(Lcom/google/android/gms/common/api/internal/t1;Lcom/google/android/gms/common/Feature;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/d$b;)Lcom/google/android/gms/common/api/internal/t1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/d$b;->a:Lcom/google/android/gms/common/api/internal/t1;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/internal/d$b;)Lcom/google/android/gms/common/Feature;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/d$b;->b:Lcom/google/android/gms/common/Feature;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/google/android/gms/common/api/internal/d$b;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/common/api/internal/d$b;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$b;->a:Lcom/google/android/gms/common/api/internal/t1;

    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/d$b;->a:Lcom/google/android/gms/common/api/internal/t1;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$b;->b:Lcom/google/android/gms/common/Feature;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/d$b;->b:Lcom/google/android/gms/common/Feature;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$b;->a:Lcom/google/android/gms/common/api/internal/t1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$b;->b:Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/i;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/i;->c(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$b;->a:Lcom/google/android/gms/common/api/internal/t1;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/i$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$b;->b:Lcom/google/android/gms/common/Feature;

    const-string v2, "feature"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/i$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/i$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
