.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:[I

.field final b:I

.field final c:I

.field final d:Ljava/lang/String;

.field final e:I

.field final f:I

.field final g:Ljava/lang/CharSequence;

.field final h:I

.field final i:Ljava/lang/CharSequence;

.field final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/app/BackStackState$a;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackState$a;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/support/v4/app/BackStackState;->l:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/c;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/support/v4/app/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/app/BackStackState;->a:[I

    iget-boolean v1, p1, Landroid/support/v4/app/c;->i:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p1, Landroid/support/v4/app/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/c$a;

    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Landroid/support/v4/app/c$a;->a:I

    aput v6, v4, v2

    add-int/lit8 v2, v5, 0x1

    iget-object v6, v3, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    if-eqz v6, :cond_0

    iget v6, v6, Landroid/support/v4/app/h;->d:I

    goto :goto_1

    :cond_0
    const/4 v6, -0x1

    :goto_1
    aput v6, v4, v5

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Landroid/support/v4/app/c$a;->c:I

    aput v6, v4, v2

    add-int/lit8 v2, v5, 0x1

    iget v6, v3, Landroid/support/v4/app/c$a;->d:I

    aput v6, v4, v5

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Landroid/support/v4/app/c$a;->e:I

    aput v6, v4, v2

    add-int/lit8 v2, v5, 0x1

    iget v3, v3, Landroid/support/v4/app/c$a;->f:I

    aput v3, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/support/v4/app/c;->g:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    iget v0, p1, Landroid/support/v4/app/c;->h:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    iget-object v0, p1, Landroid/support/v4/app/c;->j:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    iget v0, p1, Landroid/support/v4/app/c;->l:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    iget v0, p1, Landroid/support/v4/app/c;->m:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    iget-object v0, p1, Landroid/support/v4/app/c;->n:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    iget v0, p1, Landroid/support/v4/app/c;->o:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    iget-object v0, p1, Landroid/support/v4/app/c;->p:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/support/v4/app/c;->q:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->j:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/support/v4/app/c;->r:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->k:Ljava/util/ArrayList;

    iget-boolean p1, p1, Landroid/support/v4/app/c;->s:Z

    iput-boolean p1, p0, Landroid/support/v4/app/BackStackState;->l:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Landroid/support/v4/app/n;)Landroid/support/v4/app/c;
    .locals 9

    new-instance v0, Landroid/support/v4/app/c;

    invoke-direct {v0, p1}, Landroid/support/v4/app/c;-><init>(Landroid/support/v4/app/n;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/BackStackState;->a:[I

    array-length v4, v3

    if-ge v1, v4, :cond_2

    new-instance v4, Landroid/support/v4/app/c$a;

    invoke-direct {v4}, Landroid/support/v4/app/c$a;-><init>()V

    add-int/lit8 v5, v1, 0x1

    aget v1, v3, v1

    iput v1, v4, Landroid/support/v4/app/c$a;->a:I

    sget-boolean v1, Landroid/support/v4/app/n;->D:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instantiate "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " op #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " base fragment #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/app/BackStackState;->a:[I

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FragmentManager"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v5, 0x1

    aget v1, v1, v5

    if-ltz v1, :cond_1

    iget-object v5, p1, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, v4, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/h;

    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v5, v3, 0x1

    aget v3, v1, v3

    iput v3, v4, Landroid/support/v4/app/c$a;->c:I

    add-int/lit8 v6, v5, 0x1

    aget v5, v1, v5

    iput v5, v4, Landroid/support/v4/app/c$a;->d:I

    add-int/lit8 v7, v6, 0x1

    aget v6, v1, v6

    iput v6, v4, Landroid/support/v4/app/c$a;->e:I

    add-int/lit8 v8, v7, 0x1

    aget v1, v1, v7

    iput v1, v4, Landroid/support/v4/app/c$a;->f:I

    iput v3, v0, Landroid/support/v4/app/c;->c:I

    iput v5, v0, Landroid/support/v4/app/c;->d:I

    iput v6, v0, Landroid/support/v4/app/c;->e:I

    iput v1, v0, Landroid/support/v4/app/c;->f:I

    invoke-virtual {v0, v4}, Landroid/support/v4/app/c;->f(Landroid/support/v4/app/c$a;)V

    add-int/lit8 v2, v2, 0x1

    move v1, v8

    goto :goto_0

    :cond_2
    iget p1, p0, Landroid/support/v4/app/BackStackState;->b:I

    iput p1, v0, Landroid/support/v4/app/c;->g:I

    iget p1, p0, Landroid/support/v4/app/BackStackState;->c:I

    iput p1, v0, Landroid/support/v4/app/c;->h:I

    iget-object p1, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    iput-object p1, v0, Landroid/support/v4/app/c;->j:Ljava/lang/String;

    iget p1, p0, Landroid/support/v4/app/BackStackState;->e:I

    iput p1, v0, Landroid/support/v4/app/c;->l:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v4/app/c;->i:Z

    iget v1, p0, Landroid/support/v4/app/BackStackState;->f:I

    iput v1, v0, Landroid/support/v4/app/c;->m:I

    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/support/v4/app/c;->n:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/support/v4/app/BackStackState;->h:I

    iput v1, v0, Landroid/support/v4/app/c;->o:I

    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/support/v4/app/c;->p:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->j:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/support/v4/app/c;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->k:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/support/v4/app/c;->r:Ljava/util/ArrayList;

    iget-boolean v1, p0, Landroid/support/v4/app/BackStackState;->l:Z

    iput-boolean v1, v0, Landroid/support/v4/app/c;->s:Z

    invoke-virtual {v0, p1}, Landroid/support/v4/app/c;->g(I)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->a:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Landroid/support/v4/app/BackStackState;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/support/v4/app/BackStackState;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/support/v4/app/BackStackState;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/support/v4/app/BackStackState;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget p2, p0, Landroid/support/v4/app/BackStackState;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p2, p0, Landroid/support/v4/app/BackStackState;->l:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
