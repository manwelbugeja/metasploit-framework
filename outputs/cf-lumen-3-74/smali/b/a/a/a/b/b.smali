.class public final Lb/a/a/a/b/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "Lcom/google/android/gms/signin/internal/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "Lcom/google/android/gms/signin/internal/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "Lcom/google/android/gms/signin/internal/a;",
            "Lb/a/a/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "Lcom/google/android/gms/signin/internal/a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lb/a/a/a/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lb/a/a/a/b/b;->a:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v1, Lb/a/a/a/b/b;->b:Lcom/google/android/gms/common/api/a$g;

    new-instance v2, Lb/a/a/a/b/c;

    invoke-direct {v2}, Lb/a/a/a/b/c;-><init>()V

    sput-object v2, Lb/a/a/a/b/b;->c:Lcom/google/android/gms/common/api/a$a;

    new-instance v3, Lb/a/a/a/b/d;

    invoke-direct {v3}, Lb/a/a/a/b/d;-><init>()V

    sput-object v3, Lb/a/a/a/b/b;->d:Lcom/google/android/gms/common/api/a$a;

    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "profile"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "email"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/common/api/a;

    const-string v5, "SignIn.API"

    invoke-direct {v4, v5, v2, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v4, Lb/a/a/a/b/b;->e:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v2, "SignIn.INTERNAL_API"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    return-void
.end method
