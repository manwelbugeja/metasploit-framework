.class Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/Kangaroo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KangarooSponge"
.end annotation


# static fields
.field private static KeccakRoundConstants:[J


# instance fields
.field private bytesInQueue:I

.field private squeezing:Z

.field private final theQueue:[B

.field private final theRateBytes:I

.field private final theRounds:I

.field private final theState:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KeccakRoundConstants:[J

    return-void

    :array_0
    .array-data 8
        0x1
        0x8082
        -0x7fffffffffff7f76L    # -1.62577E-319
        -0x7fffffff7fff8000L    # -1.061014085E-314
        0x808b
        0x80000001L
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7ff7L    # -1.6194E-319
        0x8a
        0x88
        0x80008009L
        0x8000000aL
        0x8000808bL
        -0x7fffffffffffff75L    # -6.87E-322
        -0x7fffffffffff7f77L    # -1.6257E-319
        -0x7fffffffffff7ffdL    # -1.6191E-319
        -0x7fffffffffff7ffeL    # -1.61905E-319
        -0x7fffffffffffff80L    # -6.32E-322
        0x800a
        -0x7fffffff7ffffff6L    # -1.0609979004E-314
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7f80L    # -1.6253E-319
        0x80000001L
        -0x7fffffff7fff7ff8L    # -1.061014089E-314
    .end array-data
.end method

.method constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

    shl-int/lit8 p1, p1, 0x1

    rsub-int p1, p1, 0x640

    shr-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    iput p2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRounds:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->initSponge()V

    return-void
.end method

.method private KangarooAbsorb([BI)V
    .locals 7

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    shr-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

    aget-wide v3, v2, v1

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    aput-wide v3, v2, v1

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooPermutation()V

    return-void
.end method

.method private KangarooExtract()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    shr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([JII[BI)V

    return-void
.end method

.method private KangarooPermutation()V
    .locals 92

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    const/4 v8, 0x2

    aget-wide v9, v1, v8

    const/4 v11, 0x3

    aget-wide v12, v1, v11

    const/4 v14, 0x4

    aget-wide v15, v1, v14

    const/16 v17, 0x5

    aget-wide v18, v1, v17

    const/16 v20, 0x6

    aget-wide v21, v1, v20

    const/16 v23, 0x7

    aget-wide v24, v1, v23

    const/16 v26, 0x8

    aget-wide v27, v1, v26

    const/16 v29, 0x9

    aget-wide v30, v1, v29

    const/16 v32, 0xa

    aget-wide v33, v1, v32

    const/16 v35, 0xb

    aget-wide v36, v1, v35

    const/16 v38, 0xc

    aget-wide v39, v1, v38

    const/16 v41, 0xd

    aget-wide v41, v1, v41

    const/16 v43, 0xe

    aget-wide v44, v1, v43

    const/16 v46, 0xf

    aget-wide v47, v1, v46

    const/16 v49, 0x10

    aget-wide v49, v1, v49

    const/16 v51, 0x11

    aget-wide v51, v1, v51

    const/16 v53, 0x12

    aget-wide v54, v1, v53

    const/16 v56, 0x13

    aget-wide v57, v1, v56

    const/16 v59, 0x14

    aget-wide v60, v1, v59

    const/16 v62, 0x15

    aget-wide v63, v1, v62

    const/16 v65, 0x16

    aget-wide v65, v1, v65

    const/16 v67, 0x17

    aget-wide v68, v1, v67

    const/16 v70, 0x18

    aget-wide v70, v1, v70

    sget-object v14, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KeccakRoundConstants:[J

    array-length v14, v14

    iget v2, v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRounds:I

    sub-int/2addr v14, v2

    const/4 v2, 0x0

    :goto_0
    iget v8, v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRounds:I

    if-ge v2, v8, :cond_0

    xor-long v72, v3, v18

    xor-long v72, v72, v33

    xor-long v72, v72, v47

    xor-long v72, v72, v60

    xor-long v74, v6, v21

    xor-long v74, v74, v36

    xor-long v74, v74, v49

    xor-long v74, v74, v63

    xor-long v76, v9, v24

    xor-long v76, v76, v39

    xor-long v76, v76, v51

    xor-long v76, v76, v65

    xor-long v78, v12, v27

    xor-long v78, v78, v41

    xor-long v78, v78, v54

    xor-long v78, v78, v68

    xor-long v80, v15, v30

    xor-long v80, v80, v44

    xor-long v80, v80, v57

    xor-long v80, v80, v70

    shl-long v82, v74, v5

    const/4 v8, -0x1

    ushr-long v84, v74, v8

    or-long v82, v82, v84

    xor-long v82, v82, v80

    shl-long v84, v76, v5

    ushr-long v86, v76, v8

    or-long v84, v84, v86

    xor-long v84, v84, v72

    shl-long v86, v78, v5

    ushr-long v88, v78, v8

    or-long v86, v86, v88

    xor-long v74, v86, v74

    shl-long v86, v80, v5

    ushr-long v80, v80, v8

    or-long v80, v86, v80

    xor-long v76, v80, v76

    shl-long v80, v72, v5

    ushr-long v72, v72, v8

    or-long v72, v80, v72

    xor-long v72, v72, v78

    xor-long v3, v3, v82

    xor-long v18, v18, v82

    xor-long v33, v33, v82

    xor-long v47, v47, v82

    xor-long v60, v60, v82

    xor-long v6, v6, v84

    xor-long v21, v21, v84

    xor-long v36, v36, v84

    xor-long v49, v49, v84

    xor-long v63, v63, v84

    xor-long v9, v9, v74

    xor-long v24, v24, v74

    xor-long v39, v39, v74

    xor-long v51, v51, v74

    xor-long v65, v65, v74

    xor-long v12, v12, v76

    xor-long v27, v27, v76

    xor-long v41, v41, v76

    xor-long v54, v54, v76

    xor-long v68, v68, v76

    xor-long v15, v15, v72

    xor-long v30, v30, v72

    xor-long v44, v44, v72

    xor-long v57, v57, v72

    xor-long v70, v70, v72

    shl-long v72, v6, v5

    const/16 v8, 0x3f

    ushr-long/2addr v6, v8

    or-long v6, v72, v6

    const/16 v8, 0x2c

    shl-long v72, v21, v8

    ushr-long v21, v21, v59

    or-long v21, v72, v21

    shl-long v72, v30, v59

    ushr-long v30, v30, v8

    or-long v30, v72, v30

    const/16 v8, 0x3d

    shl-long v72, v65, v8

    ushr-long v65, v65, v11

    or-long v65, v72, v65

    const/16 v8, 0x27

    shl-long v72, v44, v8

    const/16 v8, 0x19

    ushr-long v44, v44, v8

    or-long v44, v72, v44

    shl-long v72, v60, v53

    const/16 v8, 0x2e

    ushr-long v60, v60, v8

    or-long v60, v72, v60

    const/16 v8, 0x3e

    shl-long v72, v9, v8

    const/4 v8, 0x2

    ushr-long/2addr v9, v8

    or-long v9, v72, v9

    const/16 v8, 0x2b

    shl-long v72, v39, v8

    ushr-long v39, v39, v62

    or-long v39, v72, v39

    const/16 v8, 0x19

    shl-long v72, v41, v8

    const/16 v8, 0x27

    ushr-long v41, v41, v8

    or-long v41, v72, v41

    shl-long v72, v57, v26

    const/16 v8, 0x38

    ushr-long v57, v57, v8

    or-long v57, v72, v57

    shl-long v72, v68, v8

    ushr-long v68, v68, v26

    or-long v68, v72, v68

    const/16 v8, 0x29

    shl-long v72, v47, v8

    ushr-long v47, v47, v67

    or-long v47, v72, v47

    const/16 v8, 0x1b

    shl-long v72, v15, v8

    const/16 v8, 0x25

    ushr-long/2addr v15, v8

    or-long v15, v72, v15

    shl-long v72, v70, v43

    const/16 v8, 0x32

    ushr-long v70, v70, v8

    or-long v70, v72, v70

    const/4 v8, 0x2

    shl-long v72, v63, v8

    const/16 v8, 0x3e

    ushr-long v63, v63, v8

    or-long v63, v72, v63

    const/16 v8, 0x37

    shl-long v72, v27, v8

    ushr-long v27, v27, v29

    or-long v27, v72, v27

    const/16 v8, 0x2d

    shl-long v72, v49, v8

    ushr-long v49, v49, v56

    or-long v49, v72, v49

    const/16 v8, 0x24

    shl-long v72, v18, v8

    const/16 v8, 0x1c

    ushr-long v18, v18, v8

    or-long v18, v72, v18

    shl-long v72, v12, v8

    const/16 v8, 0x24

    ushr-long/2addr v12, v8

    or-long v12, v72, v12

    shl-long v72, v54, v62

    const/16 v8, 0x2b

    ushr-long v54, v54, v8

    or-long v54, v72, v54

    shl-long v72, v51, v46

    const/16 v8, 0x31

    ushr-long v51, v51, v8

    or-long v51, v72, v51

    shl-long v72, v36, v32

    const/16 v8, 0x36

    ushr-long v36, v36, v8

    or-long v36, v72, v36

    shl-long v72, v24, v20

    const/16 v8, 0x3a

    ushr-long v24, v24, v8

    or-long v24, v72, v24

    shl-long v72, v33, v11

    const/16 v8, 0x3d

    ushr-long v33, v33, v8

    or-long v33, v72, v33

    const-wide/16 v72, -0x1

    xor-long v74, v21, v72

    and-long v74, v74, v39

    xor-long v74, v3, v74

    xor-long v76, v39, v72

    and-long v76, v76, v54

    xor-long v76, v21, v76

    xor-long v78, v54, v72

    and-long v78, v78, v70

    xor-long v39, v39, v78

    xor-long v78, v70, v72

    and-long v78, v78, v3

    xor-long v54, v54, v78

    xor-long v3, v3, v72

    and-long v3, v3, v21

    xor-long v3, v70, v3

    xor-long v21, v30, v72

    and-long v21, v21, v33

    xor-long v21, v12, v21

    xor-long v70, v33, v72

    and-long v70, v70, v49

    xor-long v70, v30, v70

    xor-long v78, v49, v72

    and-long v78, v78, v65

    xor-long v33, v33, v78

    xor-long v78, v65, v72

    and-long v78, v78, v12

    xor-long v49, v49, v78

    xor-long v12, v12, v72

    and-long v12, v12, v30

    xor-long v30, v65, v12

    xor-long v12, v24, v72

    and-long v12, v12, v41

    xor-long/2addr v12, v6

    xor-long v65, v41, v72

    and-long v65, v65, v57

    xor-long v65, v24, v65

    xor-long v78, v57, v72

    and-long v78, v78, v60

    xor-long v41, v41, v78

    xor-long v78, v60, v72

    and-long v78, v78, v6

    xor-long v57, v57, v78

    xor-long v6, v6, v72

    and-long v6, v6, v24

    xor-long v6, v60, v6

    xor-long v24, v18, v72

    and-long v24, v24, v36

    xor-long v24, v15, v24

    xor-long v60, v36, v72

    and-long v60, v60, v51

    xor-long v60, v18, v60

    xor-long v78, v51, v72

    and-long v78, v78, v68

    xor-long v36, v36, v78

    xor-long v78, v68, v72

    and-long v78, v78, v15

    xor-long v51, v51, v78

    xor-long v15, v15, v72

    and-long v15, v15, v18

    xor-long v15, v68, v15

    xor-long v18, v27, v72

    and-long v18, v18, v44

    xor-long v18, v9, v18

    xor-long v68, v44, v72

    and-long v68, v68, v47

    xor-long v68, v27, v68

    xor-long v78, v47, v72

    and-long v78, v78, v63

    xor-long v44, v44, v78

    xor-long v78, v63, v72

    and-long v78, v78, v9

    xor-long v47, v47, v78

    xor-long v9, v9, v72

    and-long v9, v9, v27

    xor-long v9, v63, v9

    sget-object v8, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KeccakRoundConstants:[J

    add-int v27, v14, v2

    aget-wide v27, v8, v27

    xor-long v27, v74, v27

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v63, v68

    move-wide/from16 v68, v47

    move-wide/from16 v47, v24

    move-wide/from16 v24, v33

    move-wide/from16 v33, v12

    move-wide/from16 v12, v54

    move-wide/from16 v54, v51

    move-wide/from16 v51, v36

    move-wide/from16 v36, v65

    move-wide/from16 v65, v44

    move-wide/from16 v44, v6

    move-wide/from16 v6, v76

    move-wide/from16 v90, v21

    move-wide/from16 v21, v70

    move-wide/from16 v70, v9

    move-wide/from16 v9, v39

    move-wide/from16 v39, v41

    move-wide/from16 v41, v57

    move-wide/from16 v57, v15

    move-wide v15, v3

    move-wide/from16 v3, v27

    move-wide/from16 v27, v49

    move-wide/from16 v49, v60

    move-wide/from16 v60, v18

    move-wide/from16 v18, v90

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    aput-wide v3, v1, v2

    aput-wide v6, v1, v5

    const/4 v2, 0x2

    aput-wide v9, v1, v2

    aput-wide v12, v1, v11

    const/4 v2, 0x4

    aput-wide v15, v1, v2

    aput-wide v18, v1, v17

    aput-wide v21, v1, v20

    aput-wide v24, v1, v23

    aput-wide v27, v1, v26

    aput-wide v30, v1, v29

    aput-wide v33, v1, v32

    aput-wide v36, v1, v35

    aput-wide v39, v1, v38

    const/16 v2, 0xd

    aput-wide v41, v1, v2

    aput-wide v44, v1, v43

    aput-wide v47, v1, v46

    const/16 v2, 0x10

    aput-wide v49, v1, v2

    const/16 v2, 0x11

    aput-wide v51, v1, v2

    aput-wide v54, v1, v53

    aput-wide v57, v1, v56

    aput-wide v60, v1, v59

    aput-wide v63, v1, v62

    const/16 v2, 0x16

    aput-wide v65, v1, v2

    aput-wide v68, v1, v67

    const/16 v2, 0x18

    aput-wide v70, v1, v2

    return-void
.end method

.method private absorb([BII)V
    .locals 6

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeezing:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, p3, :cond_3

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    if-nez v2, :cond_2

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    sub-int v3, p3, v3

    if-gt v1, v3, :cond_2

    :cond_1
    add-int v2, p2, v1

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooAbsorb([BI)V

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    add-int/2addr v1, v2

    sub-int v2, p3, v2

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_2
    iget v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    sub-int/2addr v3, v2

    sub-int v2, p3, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v3, p2, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    if-ne v3, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooAbsorb([BI)V

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to absorb while squeezing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method static synthetic access$100(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    return p0
.end method

.method static synthetic access$200(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeeze([BII)V

    return-void
.end method

.method static synthetic access$300(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->absorb([BII)V

    return-void
.end method

.method static synthetic access$400(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->initSponge()V

    return-void
.end method

.method static synthetic access$500(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->padAndSwitchToSqueezingPhase()V

    return-void
.end method

.method private initSponge()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeezing:Z

    return-void
.end method

.method private padAndSwitchToSqueezingPhase()V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget-byte v4, v0, v1

    xor-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooAbsorb([BI)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooExtract()V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeezing:Z

    return-void
.end method

.method private squeeze([BII)V
    .locals 5

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeezing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->padAndSwitchToSqueezingPhase()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    if-nez v1, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooPermutation()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooExtract()V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    :cond_1
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    sub-int v2, p3, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    sub-int/2addr v3, v4

    add-int v4, p2, v0

    invoke-static {v2, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method
