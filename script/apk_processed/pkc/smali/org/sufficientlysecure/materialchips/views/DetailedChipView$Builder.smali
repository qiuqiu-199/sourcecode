.class public Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;
.super Ljava/lang/Object;
.source "DetailedChipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/materialchips/views/DetailedChipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private backgroundColor:Landroid/content/res/ColorStateList;

.field private context:Landroid/content/Context;

.field private deleteIconColor:Landroid/content/res/ColorStateList;

.field private info:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private textColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;)Landroid/content/Context;
    .locals 0

    .line 155
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 155
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->backgroundColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 155
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->textColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 155
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->deleteIconColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->info:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public backgroundColor(Landroid/content/res/ColorStateList;)Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;
    .locals 0

    .line 189
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->backgroundColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public build()Lorg/sufficientlysecure/materialchips/views/DetailedChipView;
    .locals 1

    .line 199
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->access$000(Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;)Lorg/sufficientlysecure/materialchips/views/DetailedChipView;

    move-result-object v0

    return-object v0
.end method

.method public chip(Lorg/sufficientlysecure/materialchips/model/ChipInterface;)Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;
    .locals 1

    .line 178
    invoke-interface {p1}, Lorg/sufficientlysecure/materialchips/model/ChipInterface;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->name:Ljava/lang/String;

    .line 179
    invoke-interface {p1}, Lorg/sufficientlysecure/materialchips/model/ChipInterface;->getInfo()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->info:Ljava/lang/String;

    return-object p0
.end method
