.class public Lcom/keepassdroid/icons/DrawableFactory;
.super Ljava/lang/Object;
.source "DrawableFactory.java"


# static fields
.field private static blank:Landroid/graphics/drawable/Drawable; = null

.field private static blankHeight:I = -0x1

.field private static blankWidth:I = -0x1


# instance fields
.field private customIconMap:Lorg/apache/commons/collections/map/ReferenceMap;

.field private standardIconMap:Lorg/apache/commons/collections/map/ReferenceMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/apache/commons/collections/map/ReferenceMap;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/map/ReferenceMap;-><init>(II)V

    iput-object v0, p0, Lcom/keepassdroid/icons/DrawableFactory;->customIconMap:Lorg/apache/commons/collections/map/ReferenceMap;

    .line 52
    new-instance v0, Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/map/ReferenceMap;-><init>(II)V

    iput-object v0, p0, Lcom/keepassdroid/icons/DrawableFactory;->standardIconMap:Lorg/apache/commons/collections/map/ReferenceMap;

    return-void
.end method

.method private getIconDrawable(Landroid/content/res/Resources;Lcom/keepassdroid/database/PwIcon;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 60
    instance-of v0, p2, Lcom/keepassdroid/database/PwIconStandard;

    if-eqz v0, :cond_0

    .line 61
    check-cast p2, Lcom/keepassdroid/database/PwIconStandard;

    invoke-virtual {p0, p1, p2}, Lcom/keepassdroid/icons/DrawableFactory;->getIconDrawable(Landroid/content/res/Resources;Lcom/keepassdroid/database/PwIconStandard;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 63
    :cond_0
    check-cast p2, Lcom/keepassdroid/database/PwIconCustom;

    invoke-virtual {p0, p1, p2}, Lcom/keepassdroid/icons/DrawableFactory;->getIconDrawable(Landroid/content/res/Resources;Lcom/keepassdroid/database/PwIconCustom;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private static initBlank(Landroid/content/res/Resources;)V
    .locals 1

    .line 68
    sget-object v0, Lcom/keepassdroid/icons/DrawableFactory;->blank:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const v0, 0x7f0800b2

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sput-object p0, Lcom/keepassdroid/icons/DrawableFactory;->blank:Landroid/graphics/drawable/Drawable;

    .line 70
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    sput p0, Lcom/keepassdroid/icons/DrawableFactory;->blankWidth:I

    .line 71
    sget-object p0, Lcom/keepassdroid/icons/DrawableFactory;->blank:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    sput p0, Lcom/keepassdroid/icons/DrawableFactory;->blankHeight:I

    :cond_0
    return-void
.end method

.method private resize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 124
    sget v2, Lcom/keepassdroid/icons/DrawableFactory;->blankWidth:I

    if-ne v0, v2, :cond_0

    sget v0, Lcom/keepassdroid/icons/DrawableFactory;->blankHeight:I

    if-ne v1, v0, :cond_0

    return-object p1

    .line 128
    :cond_0
    sget v0, Lcom/keepassdroid/icons/DrawableFactory;->blankHeight:I

    const/4 v1, 0x1

    invoke-static {p1, v2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public assignDrawableTo(Landroid/widget/ImageView;Landroid/content/res/Resources;Lcom/keepassdroid/database/PwIcon;)V
    .locals 0

    .line 55
    invoke-direct {p0, p2, p3}, Lcom/keepassdroid/icons/DrawableFactory;->getIconDrawable(Landroid/content/res/Resources;Lcom/keepassdroid/database/PwIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 56
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/keepassdroid/icons/DrawableFactory;->standardIconMap:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ReferenceMap;->clear()V

    .line 133
    iget-object v0, p0, Lcom/keepassdroid/icons/DrawableFactory;->customIconMap:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ReferenceMap;->clear()V

    return-void
.end method

.method public getIconDrawable(Landroid/content/res/Resources;Lcom/keepassdroid/database/PwIconCustom;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 88
    invoke-static {p1}, Lcom/keepassdroid/icons/DrawableFactory;->initBlank(Landroid/content/res/Resources;)V

    if-nez p2, :cond_0

    .line 90
    sget-object p1, Lcom/keepassdroid/icons/DrawableFactory;->blank:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/icons/DrawableFactory;->customIconMap:Lorg/apache/commons/collections/map/ReferenceMap;

    iget-object v1, p2, Lcom/keepassdroid/database/PwIconCustom;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/ReferenceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 96
    iget-object v0, p2, Lcom/keepassdroid/database/PwIconCustom;->imageData:[B

    if-nez v0, :cond_1

    .line 97
    sget-object p1, Lcom/keepassdroid/icons/DrawableFactory;->blank:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 100
    :cond_1
    iget-object v0, p2, Lcom/keepassdroid/database/PwIconCustom;->imageData:[B

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/keepassdroid/database/PwIconCustom;->imageData:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 104
    sget-object p1, Lcom/keepassdroid/icons/DrawableFactory;->blank:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 107
    :cond_2
    invoke-direct {p0, v0}, Lcom/keepassdroid/icons/DrawableFactory;->resize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 110
    iget-object p1, p0, Lcom/keepassdroid/icons/DrawableFactory;->customIconMap:Lorg/apache/commons/collections/map/ReferenceMap;

    iget-object p2, p2, Lcom/keepassdroid/database/PwIconCustom;->uuid:Ljava/util/UUID;

    invoke-virtual {p1, p2, v1}, Lorg/apache/commons/collections/map/ReferenceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method public getIconDrawable(Landroid/content/res/Resources;Lcom/keepassdroid/database/PwIconStandard;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 76
    iget p2, p2, Lcom/keepassdroid/database/PwIconStandard;->iconId:I

    invoke-static {p2}, Lcom/keepassdroid/icons/Icons;->iconToResId(I)I

    move-result p2

    .line 78
    iget-object v0, p0, Lcom/keepassdroid/icons/DrawableFactory;->standardIconMap:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/ReferenceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    iget-object p1, p0, Lcom/keepassdroid/icons/DrawableFactory;->standardIconMap:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/apache/commons/collections/map/ReferenceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
