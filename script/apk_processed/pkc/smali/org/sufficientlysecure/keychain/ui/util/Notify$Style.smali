.class public final enum Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;
.super Ljava/lang/Enum;
.source "Notify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/util/Notify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

.field public static final enum ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

.field public static final enum OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

.field public static final enum WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;


# instance fields
.field public final mLineColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 42
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    const-string v1, "OK"

    const/4 v2, 0x0

    const v3, 0x7f06001c

    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    const-string v1, "WARN"

    const/4 v3, 0x1

    const v4, 0x7f06001d

    invoke-direct {v0, v1, v3, v4}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    const-string v1, "ERROR"

    const/4 v4, 0x2

    const v5, 0x7f06001f

    invoke-direct {v0, v1, v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    const/4 v0, 0x3

    .line 41
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    aput-object v1, v0, v4

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    return-void

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;---><clinit>()V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    .line 46
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p0, v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->mLineColor:I

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;---><init>(Ljava/lang/String;II)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;
    .locals 4

    move-object/16 v1, p0

    .line 41
    const-class v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;
    .locals 4

    .line 41
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;--->values()[Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public applyToBar(Lcom/nispok/snackbar/Snackbar;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 51
    iget v0, v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->mLineColor:I

    invoke-virtual {v2, v0}, Lcom/nispok/snackbar/Snackbar;->lineColorResource(I)Lcom/nispok/snackbar/Snackbar;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;--->applyToBar(Lcom/nispok/snackbar/Snackbar;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
