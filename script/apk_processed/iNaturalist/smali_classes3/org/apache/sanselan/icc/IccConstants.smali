.class public interface abstract Lorg/apache/sanselan/icc/IccConstants;
.super Ljava/lang/Object;
.source "IccConstants.java"


# static fields
.field public static final AToB0Tag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final AToB1Tag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final AToB2Tag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final BToA0Tag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final BToA1Tag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final BToA2Tag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final IEC:I = 0x49454320

.field public static final IccTagDataTypes:[Lorg/apache/sanselan/icc/IccTagDataType;

.field public static final TagTypes:[Lorg/apache/sanselan/icc/IccTagType;

.field public static final blueMatrixColumnTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final blueTRCTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final calibrationDateTimeTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final charTargetTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final chromaticAdaptationTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final chromaticityTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final colorantOrderTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final colorantTableTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final copyrightTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final dataType:Lorg/apache/sanselan/icc/IccTagDataType;

.field public static final descType:Lorg/apache/sanselan/icc/IccTagDataType;

.field public static final deviceMfgDescTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final deviceModelDescTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final gamutTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final grayTRCTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final greenMatrixColumnTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final greenTRCTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final luminanceTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final measurementTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final mediaBlackPointTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final mediaWhitePointTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final multiLocalizedUnicodeType:Lorg/apache/sanselan/icc/IccTagDataType;

.field public static final namedColor2Tag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final outputResponseTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final preview0Tag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final preview1Tag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final preview2Tag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final profileDescriptionTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final profileSequenceDescTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final redMatrixColumnTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final redTRCTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final sRGB:I = 0x73524742

.field public static final signatureType:Lorg/apache/sanselan/icc/IccTagDataType;

.field public static final technologyTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final textType:Lorg/apache/sanselan/icc/IccTagDataType;

.field public static final viewingCondDescTag:Lorg/apache/sanselan/icc/IccTagType;

.field public static final viewingConditionsTag:Lorg/apache/sanselan/icc/IccTagType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 33
    new-instance v0, Lorg/apache/sanselan/icc/IccConstants$1;

    const-string v1, "descType"

    const v2, 0x64657363

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/icc/IccConstants$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sanselan/icc/IccConstants;->descType:Lorg/apache/sanselan/icc/IccTagDataType;

    .line 56
    new-instance v0, Lorg/apache/sanselan/icc/IccConstants$2;

    const-string v1, "dataType"

    const v3, 0x64617461

    invoke-direct {v0, v1, v3}, Lorg/apache/sanselan/icc/IccConstants$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sanselan/icc/IccConstants;->dataType:Lorg/apache/sanselan/icc/IccTagDataType;

    .line 70
    new-instance v0, Lorg/apache/sanselan/icc/IccConstants$3;

    const-string v1, "multiLocalizedUnicodeType"

    const v3, 0x6d6c7563

    invoke-direct {v0, v1, v3}, Lorg/apache/sanselan/icc/IccConstants$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sanselan/icc/IccConstants;->multiLocalizedUnicodeType:Lorg/apache/sanselan/icc/IccTagDataType;

    .line 84
    new-instance v0, Lorg/apache/sanselan/icc/IccConstants$4;

    const-string v1, "signatureType"

    const v3, 0x73696720

    invoke-direct {v0, v1, v3}, Lorg/apache/sanselan/icc/IccConstants$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sanselan/icc/IccConstants;->signatureType:Lorg/apache/sanselan/icc/IccTagDataType;

    .line 111
    new-instance v0, Lorg/apache/sanselan/icc/IccConstants$5;

    const-string v1, "textType"

    const v3, 0x74657874

    invoke-direct {v0, v1, v3}, Lorg/apache/sanselan/icc/IccConstants$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sanselan/icc/IccConstants;->textType:Lorg/apache/sanselan/icc/IccTagDataType;

    const/4 v0, 0x5

    .line 128
    new-array v1, v0, [Lorg/apache/sanselan/icc/IccTagDataType;

    sget-object v3, Lorg/apache/sanselan/icc/IccConstants;->descType:Lorg/apache/sanselan/icc/IccTagDataType;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    sget-object v3, Lorg/apache/sanselan/icc/IccConstants;->dataType:Lorg/apache/sanselan/icc/IccTagDataType;

    const/4 v5, 0x1

    aput-object v3, v1, v5

    sget-object v3, Lorg/apache/sanselan/icc/IccConstants;->multiLocalizedUnicodeType:Lorg/apache/sanselan/icc/IccTagDataType;

    const/4 v6, 0x2

    aput-object v3, v1, v6

    sget-object v3, Lorg/apache/sanselan/icc/IccConstants;->signatureType:Lorg/apache/sanselan/icc/IccTagDataType;

    const/4 v7, 0x3

    aput-object v3, v1, v7

    sget-object v3, Lorg/apache/sanselan/icc/IccConstants;->textType:Lorg/apache/sanselan/icc/IccTagDataType;

    const/4 v8, 0x4

    aput-object v3, v1, v8

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->IccTagDataTypes:[Lorg/apache/sanselan/icc/IccTagDataType;

    .line 136
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "AToB0Tag"

    const-string v9, "lut8Type or lut16Type or lutAtoBType"

    const v10, 0x41324230

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->AToB0Tag:Lorg/apache/sanselan/icc/IccTagType;

    .line 149
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "AToB1Tag"

    const-string v9, "lut8Type or lut16Type or lutAtoBType"

    const v10, 0x41324231

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->AToB1Tag:Lorg/apache/sanselan/icc/IccTagType;

    .line 155
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "AToB2Tag"

    const-string v9, "lut8Type or lut16Type or lutAtoBType"

    const v10, 0x41324232

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->AToB2Tag:Lorg/apache/sanselan/icc/IccTagType;

    .line 161
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "blueMatrixColumnTag"

    const-string v9, "XYZType"

    const v10, 0x6258595a

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->blueMatrixColumnTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 166
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "blueTRCTag"

    const-string v9, "curveType or parametricCurveType"

    const v10, 0x62545243

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->blueTRCTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 172
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "BToA0Tag"

    const-string v9, "lut8Type or lut16Type or lutBtoAType"

    const v10, 0x42324130

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->BToA0Tag:Lorg/apache/sanselan/icc/IccTagType;

    .line 178
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "BToA1Tag"

    const-string v9, "lut8Type or lut16Type or lutBtoAType"

    const v10, 0x42324131

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->BToA1Tag:Lorg/apache/sanselan/icc/IccTagType;

    .line 184
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "BToA2Tag"

    const-string v9, "lut8Type or lut16Type or lutBtoAType"

    const v10, 0x42324132

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->BToA2Tag:Lorg/apache/sanselan/icc/IccTagType;

    .line 190
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "calibrationDateTimeTag"

    const-string v9, "dateTimeType"

    const v10, 0x63616c74

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->calibrationDateTimeTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 197
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "charTargetTag"

    const-string v9, "textType"

    const v10, 0x74617267

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->charTargetTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 217
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "chromaticAdaptationTag"

    const-string v9, "s15Fixed16ArrayType"

    const v10, 0x63686164

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->chromaticAdaptationTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 247
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "chromaticityTag"

    const-string v9, "chromaticityType"

    const v10, 0x6368726d

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->chromaticityTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 252
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "colorantOrderTag"

    const-string v9, "colorantOrderType"

    const v10, 0x636c726f

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->colorantOrderTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 257
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "colorantTableTag"

    const-string v9, "colorantTableType"

    const v10, 0x636c7274

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->colorantTableTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 264
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "copyrightTag"

    const-string v9, "multiLocalizedUnicodeType"

    const v10, 0x63707274

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->copyrightTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 269
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "deviceMfgDescTag"

    const-string v9, "multiLocalizedUnicodeType"

    const v10, 0x646d6e64

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->deviceMfgDescTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 275
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "deviceModelDescTag"

    const-string v9, "multiLocalizedUnicodeType"

    const v10, 0x646d6464

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->deviceModelDescTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 281
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "gamutTag"

    const-string v9, "lut8Type or lut16Type or lutBtoAType"

    const v10, 0x67616d74

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->gamutTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 289
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "grayTRCTag"

    const-string v9, "curveType or parametricCurveType"

    const v10, 0x6b545243

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->grayTRCTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 296
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "greenMatrixColumnTag"

    const-string v9, "XYZType"

    const v10, 0x6758595a

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->greenMatrixColumnTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 301
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "greenTRCTag"

    const-string v9, "curveType or parametricCurveType"

    const v10, 0x67545243

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->greenTRCTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 308
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "luminanceTag"

    const-string v9, "XYZType"

    const v10, 0x6c756d69

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->luminanceTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 315
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "measurementTag"

    const-string v9, "measurementType"

    const v10, 0x6d656173

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->measurementTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 321
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "mediaBlackPointTag"

    const-string v9, "XYZType"

    const v10, 0x626b7074

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->mediaBlackPointTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 330
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "mediaWhitePointTag"

    const-string v9, "XYZType"

    const v10, 0x77747074

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->mediaWhitePointTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 342
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "namedColor2Tag"

    const-string v9, "namedColor2Type"

    const v10, 0x6e636c32

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->namedColor2Tag:Lorg/apache/sanselan/icc/IccTagType;

    .line 348
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "outputResponseTag"

    const-string v9, "responseCurveSet16Type"

    const v10, 0x72657370

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->outputResponseTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 361
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "preview0Tag"

    const-string v9, "lut8Type or lut16Type or lutBtoAType"

    const v10, 0x70726530    # 3.000708E29f

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->preview0Tag:Lorg/apache/sanselan/icc/IccTagType;

    .line 369
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "preview1Tag"

    const-string v9, "lut8Type or lut16Type or lutBtoAType"

    const v10, 0x70726531    # 3.0007082E29f

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->preview1Tag:Lorg/apache/sanselan/icc/IccTagType;

    .line 377
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "preview2Tag"

    const-string v9, "lut8Type or lut16Type or lutBtoAType"

    const v10, 0x70726532    # 3.0007084E29f

    invoke-direct {v1, v3, v9, v10}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->preview2Tag:Lorg/apache/sanselan/icc/IccTagType;

    .line 385
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v3, "profileDescriptionTag"

    const-string v9, "multiLocalizedUnicodeType"

    invoke-direct {v1, v3, v9, v2}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->profileDescriptionTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 393
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v2, "profileSequenceDescTag"

    const-string v3, "profileSequenceDescType"

    const v9, 0x70736571

    invoke-direct {v1, v2, v3, v9}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->profileSequenceDescTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 400
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v2, "redMatrixColumnTag"

    const-string v3, "XYZType"

    const v9, 0x7258595a

    invoke-direct {v1, v2, v3, v9}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->redMatrixColumnTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 406
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v2, "redTRCTag"

    const-string v3, "curveType or parametricCurveType"

    const v9, 0x72545243

    invoke-direct {v1, v2, v3, v9}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->redTRCTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 413
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v2, "technologyTag"

    const-string v3, "signatureType"

    const v9, 0x74656368

    invoke-direct {v1, v2, v3, v9}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->technologyTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 419
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v2, "viewingCondDescTag"

    const-string v3, "multiLocalizedUnicodeType"

    const v9, 0x76756564

    invoke-direct {v1, v2, v3, v9}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->viewingCondDescTag:Lorg/apache/sanselan/icc/IccTagType;

    .line 427
    new-instance v1, Lorg/apache/sanselan/icc/IccTagType;

    const-string v2, "viewingConditionsTag"

    const-string v3, "viewingConditionsType"

    const v9, 0x76696577

    invoke-direct {v1, v2, v3, v9}, Lorg/apache/sanselan/icc/IccTagType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->viewingConditionsTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v1, 0x25

    .line 439
    new-array v1, v1, [Lorg/apache/sanselan/icc/IccTagType;

    sget-object v2, Lorg/apache/sanselan/icc/IccConstants;->AToB0Tag:Lorg/apache/sanselan/icc/IccTagType;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/sanselan/icc/IccConstants;->AToB1Tag:Lorg/apache/sanselan/icc/IccTagType;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/sanselan/icc/IccConstants;->AToB2Tag:Lorg/apache/sanselan/icc/IccTagType;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/sanselan/icc/IccConstants;->blueMatrixColumnTag:Lorg/apache/sanselan/icc/IccTagType;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/sanselan/icc/IccConstants;->blueTRCTag:Lorg/apache/sanselan/icc/IccTagType;

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/sanselan/icc/IccConstants;->BToA0Tag:Lorg/apache/sanselan/icc/IccTagType;

    aput-object v2, v1, v0

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->BToA1Tag:Lorg/apache/sanselan/icc/IccTagType;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->BToA2Tag:Lorg/apache/sanselan/icc/IccTagType;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->calibrationDateTimeTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->charTargetTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->chromaticAdaptationTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->chromaticityTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0xb

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->colorantOrderTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->colorantTableTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->copyrightTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->deviceMfgDescTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0xf

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->deviceModelDescTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x10

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->gamutTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x11

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->grayTRCTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x12

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->greenMatrixColumnTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x13

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->greenTRCTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x14

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->luminanceTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x15

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->measurementTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x16

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->mediaBlackPointTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x17

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->mediaWhitePointTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x18

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->namedColor2Tag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x19

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->outputResponseTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->preview0Tag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->preview1Tag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->preview2Tag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->profileDescriptionTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->profileSequenceDescTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->redMatrixColumnTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x20

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->redTRCTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x21

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->technologyTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x22

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->viewingCondDescTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x23

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/sanselan/icc/IccConstants;->viewingConditionsTag:Lorg/apache/sanselan/icc/IccTagType;

    const/16 v2, 0x24

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/sanselan/icc/IccConstants;->TagTypes:[Lorg/apache/sanselan/icc/IccTagType;

    return-void
.end method
