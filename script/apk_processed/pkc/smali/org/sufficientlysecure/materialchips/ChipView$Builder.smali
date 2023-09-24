.class public Lorg/sufficientlysecure/materialchips/ChipView$Builder;
.super Ljava/lang/Object;
.source "ChipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/materialchips/ChipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private backgroundColor:Landroid/content/res/ColorStateList;

.field private chip:Lorg/sufficientlysecure/materialchips/model/ChipInterface;

.field private context:Landroid/content/Context;

.field private deletable:Z

.field private deleteIcon:Landroid/graphics/drawable/Drawable;

.field private deleteIconColor:Landroid/content/res/ColorStateList;

.field private label:Ljava/lang/String;

.field private labelColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 335
    iput-boolean v0, p0, Lorg/sufficientlysecure/materialchips/ChipView$Builder;->deletable:Z

    .line 342
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Landroid/content/Context;
    .locals 0

    .line 331
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/ChipView$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Ljava/lang/String;
    .locals 0

    .line 331
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/ChipView$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 331
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/ChipView$Builder;->labelColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Z
    .locals 0

    .line 331
    iget-boolean p0, p0, Lorg/sufficientlysecure/materialchips/ChipView$Builder;->deletable:Z

    return p0
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 331
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/ChipView$Builder;->deleteIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$600(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 331
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/ChipView$Builder;->deleteIconColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$700(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 331
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/ChipView$Builder;->backgroundColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$800(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Lorg/sufficientlysecure/materialchips/model/ChipInterface;
    .locals 0

    .line 331
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/ChipView$Builder;->chip:Lorg/sufficientlysecure/materialchips/model/ChipInterface;

    return-object p0
.end method


# virtual methods
.method public build()Lorg/sufficientlysecure/materialchips/ChipView;
    .locals 1

    .line 382
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/ChipView;->access$000(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Lorg/sufficientlysecure/materialchips/ChipView;

    move-result-object v0

    return-object v0
.end method
