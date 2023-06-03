.class public final Lcom/melnykov/fab/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/melnykov/fab/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FloatingActionButton:[I

.field public static final FloatingActionButton_backgroundTint:I = 0x0

.field public static final FloatingActionButton_backgroundTintMode:I = 0x1

.field public static final FloatingActionButton_borderWidth:I = 0x2

.field public static final FloatingActionButton_elevation:I = 0x3

.field public static final FloatingActionButton_fabSize:I = 0x4

.field public static final FloatingActionButton_fab_colorDisabled:I = 0x5

.field public static final FloatingActionButton_fab_colorNormal:I = 0x6

.field public static final FloatingActionButton_fab_colorPressed:I = 0x7

.field public static final FloatingActionButton_fab_colorRipple:I = 0x8

.field public static final FloatingActionButton_fab_shadow:I = 0x9

.field public static final FloatingActionButton_fab_type:I = 0xa

.field public static final FloatingActionButton_pressedTranslationZ:I = 0xb

.field public static final FloatingActionButton_rippleColor:I = 0xc

.field public static final FloatingActionButton_useCompatPadding:I = 0xd


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    .line 65
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/melnykov/fab/R$styleable;->FloatingActionButton:[I

    return-void

    :array_0
    .array-data 4
        0x7f04003f
        0x7f040040
        0x7f040047
        0x7f0400f2
        0x7f040103
        0x7f040104
        0x7f040105
        0x7f040106
        0x7f040107
        0x7f040108
        0x7f040109
        0x7f0401b9
        0x7f0401d8
        0x7f040264
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
