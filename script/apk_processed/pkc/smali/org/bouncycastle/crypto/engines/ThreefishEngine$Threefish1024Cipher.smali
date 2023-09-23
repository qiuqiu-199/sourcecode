.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
.source "ThreefishEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish1024Cipher"
.end annotation


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    .line 1017
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method decryptBlock([J[J)V
    .locals 242

    move-object/from16 v0, p0

    .line 1239
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->kw:[J

    .line 1240
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->t:[J

    .line 1241
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$300()[I

    move-result-object v5

    .line 1242
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v6

    .line 1245
    array-length v7, v3

    const/16 v8, 0x21

    if-eq v7, v8, :cond_0

    .line 1247
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1249
    :cond_0
    array-length v7, v4

    const/4 v8, 0x5

    if-eq v7, v8, :cond_1

    .line 1251
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    const/4 v7, 0x0

    .line 1254
    aget-wide v9, p1, v7

    const/4 v11, 0x1

    .line 1255
    aget-wide v12, p1, v11

    const/4 v14, 0x2

    .line 1256
    aget-wide v15, p1, v14

    const/16 v17, 0x3

    .line 1257
    aget-wide v18, p1, v17

    const/4 v14, 0x4

    .line 1258
    aget-wide v20, p1, v14

    .line 1259
    aget-wide v22, p1, v8

    const/16 v24, 0x6

    .line 1260
    aget-wide v25, p1, v24

    const/16 v27, 0x7

    .line 1261
    aget-wide v28, p1, v27

    const/16 v7, 0x8

    .line 1262
    aget-wide v31, p1, v7

    const/16 v7, 0x9

    .line 1263
    aget-wide v33, p1, v7

    const/16 v8, 0xa

    .line 1264
    aget-wide v35, p1, v8

    const/16 v37, 0xb

    .line 1265
    aget-wide v38, p1, v37

    const/16 v8, 0xc

    .line 1266
    aget-wide v40, p1, v8

    const/16 v8, 0xd

    .line 1267
    aget-wide v42, p1, v8

    const/16 v44, 0xe

    .line 1268
    aget-wide v45, p1, v44

    const/16 v47, 0xf

    .line 1269
    aget-wide v47, p1, v47

    const/16 v1, 0x13

    :goto_0
    if-lt v1, v11, :cond_2

    .line 1273
    aget v49, v5, v1

    .line 1274
    aget v50, v6, v1

    add-int/lit8 v51, v49, 0x1

    .line 1277
    aget-wide v52, v3, v51

    move-wide/from16 v54, v15

    sub-long v14, v9, v52

    add-int/lit8 v9, v49, 0x2

    .line 1278
    aget-wide v52, v3, v9

    move/from16 v56, v9

    sub-long v8, v12, v52

    add-int/lit8 v10, v49, 0x3

    .line 1279
    aget-wide v12, v3, v10

    move-wide/from16 v57, v8

    sub-long v7, v54, v12

    add-int/lit8 v9, v49, 0x4

    .line 1280
    aget-wide v12, v3, v9

    move-object/from16 v59, v5

    move-object/from16 v60, v6

    sub-long v5, v18, v12

    add-int/lit8 v12, v49, 0x5

    .line 1281
    aget-wide v18, v3, v12

    move/from16 v61, v12

    sub-long v11, v20, v18

    add-int/lit8 v13, v49, 0x6

    .line 1282
    aget-wide v18, v3, v13

    move/from16 v63, v9

    move/from16 v62, v10

    sub-long v9, v22, v18

    add-int/lit8 v16, v49, 0x7

    .line 1283
    aget-wide v18, v3, v16

    move-wide/from16 v64, v5

    sub-long v5, v25, v18

    add-int/lit8 v18, v49, 0x8

    .line 1284
    aget-wide v20, v3, v18

    move-wide/from16 v66, v9

    sub-long v9, v28, v20

    add-int/lit8 v19, v49, 0x9

    .line 1285
    aget-wide v20, v3, v19

    move-wide/from16 v68, v9

    sub-long v9, v31, v20

    add-int/lit8 v20, v49, 0xa

    .line 1286
    aget-wide v21, v3, v20

    move-wide/from16 v70, v9

    sub-long v9, v33, v21

    add-int/lit8 v21, v49, 0xb

    .line 1287
    aget-wide v22, v3, v21

    move-wide/from16 v72, v9

    sub-long v9, v35, v22

    add-int/lit8 v22, v49, 0xc

    .line 1288
    aget-wide v25, v3, v22

    move-wide/from16 v74, v9

    sub-long v9, v38, v25

    add-int/lit8 v23, v49, 0xd

    .line 1289
    aget-wide v25, v3, v23

    move-wide/from16 v76, v11

    sub-long v11, v40, v25

    add-int/lit8 v25, v49, 0xe

    .line 1290
    aget-wide v28, v3, v25

    add-int/lit8 v26, v50, 0x1

    aget-wide v31, v4, v26

    add-long v33, v28, v31

    move-wide/from16 v78, v11

    sub-long v11, v42, v33

    add-int/lit8 v28, v49, 0xf

    .line 1291
    aget-wide v31, v3, v28

    add-int/lit8 v29, v50, 0x2

    aget-wide v33, v4, v29

    add-long v35, v31, v33

    move-object/from16 v80, v4

    move-wide/from16 v81, v5

    sub-long v4, v45, v35

    add-int/lit8 v6, v49, 0x10

    .line 1292
    aget-wide v31, v3, v6

    move-object/from16 v83, v3

    int-to-long v2, v1

    add-long v33, v31, v2

    const-wide/16 v31, 0x1

    add-long v35, v33, v31

    move/from16 v84, v1

    sub-long v0, v47, v35

    const/16 v6, 0x9

    .line 1295
    invoke-static {v0, v1, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    move-wide/from16 v85, v2

    sub-long v2, v14, v0

    const/16 v6, 0x30

    .line 1297
    invoke-static {v9, v10, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long v14, v7, v9

    const/16 v6, 0x23

    move-wide/from16 v7, v81

    .line 1299
    invoke-static {v11, v12, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    move-wide/from16 v87, v9

    sub-long v9, v7, v11

    const/16 v6, 0x34

    move-wide/from16 v89, v11

    move-wide/from16 v11, v72

    move-wide/from16 v7, v76

    .line 1301
    invoke-static {v11, v12, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    move-wide/from16 v91, v0

    sub-long v0, v7, v11

    const/16 v6, 0x17

    move-wide/from16 v7, v57

    .line 1303
    invoke-static {v7, v8, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    move-wide/from16 v93, v11

    sub-long v11, v4, v6

    const/16 v4, 0x1f

    move-wide/from16 v97, v6

    move-wide/from16 v95, v11

    move-wide/from16 v11, v66

    move-wide/from16 v5, v70

    .line 1305
    invoke-static {v11, v12, v4, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v7

    sub-long v11, v5, v7

    const/16 v4, 0x25

    move-wide/from16 v99, v11

    move-wide/from16 v5, v64

    move-wide/from16 v11, v74

    .line 1307
    invoke-static {v5, v6, v4, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    move-wide/from16 v101, v9

    sub-long v9, v11, v4

    const/16 v6, 0x14

    move-wide/from16 v103, v9

    move-wide/from16 v11, v68

    move-wide/from16 v9, v78

    .line 1309
    invoke-static {v11, v12, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    move-wide/from16 v105, v0

    sub-long v0, v9, v11

    const/16 v6, 0x1f

    .line 1312
    invoke-static {v11, v12, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long v11, v2, v9

    const/16 v2, 0x2c

    .line 1314
    invoke-static {v7, v8, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v6, v14, v2

    const/16 v8, 0x2f

    move-wide/from16 v14, v105

    .line 1316
    invoke-static {v4, v5, v8, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    move-wide/from16 v107, v2

    sub-long v2, v14, v4

    const/16 v8, 0x2e

    move-wide/from16 v109, v4

    move-wide/from16 v4, v97

    move-wide/from16 v14, v101

    .line 1318
    invoke-static {v4, v5, v8, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    move-wide/from16 v111, v9

    sub-long v8, v14, v4

    const/16 v10, 0x13

    move-wide/from16 v14, v91

    .line 1320
    invoke-static {v14, v15, v10, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    move-wide/from16 v113, v4

    sub-long v4, v0, v14

    const/16 v0, 0x2a

    move-wide/from16 v117, v2

    move-wide/from16 v115, v4

    move-wide/from16 v4, v89

    move-wide/from16 v1, v95

    .line 1322
    invoke-static {v4, v5, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v3

    move/from16 v119, v13

    move-wide/from16 v120, v14

    sub-long v13, v1, v3

    const/16 v0, 0x2c

    move-wide/from16 v122, v13

    move-wide/from16 v1, v87

    move-wide/from16 v13, v99

    .line 1324
    invoke-static {v1, v2, v0, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    move-wide/from16 v124, v8

    sub-long v8, v13, v0

    const/16 v2, 0x19

    move-wide/from16 v126, v8

    move-wide/from16 v13, v93

    move-wide/from16 v8, v103

    .line 1326
    invoke-static {v13, v14, v2, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v13

    move-wide/from16 v128, v0

    sub-long v0, v8, v13

    const/16 v2, 0x10

    .line 1329
    invoke-static {v13, v14, v2, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long v13, v11, v8

    const/16 v2, 0x22

    .line 1331
    invoke-static {v3, v4, v2, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v4, v6, v2

    const/16 v6, 0x38

    move-wide/from16 v130, v2

    move-wide/from16 v10, v124

    move-wide/from16 v2, v128

    .line 1333
    invoke-static {v2, v3, v6, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v6, v10, v2

    const/16 v10, 0x33

    move-wide/from16 v132, v2

    move-wide/from16 v11, v117

    move-wide/from16 v2, v120

    .line 1335
    invoke-static {v2, v3, v10, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    move-wide/from16 v134, v8

    sub-long v8, v11, v2

    move-wide/from16 v10, v111

    const/4 v12, 0x4

    .line 1337
    invoke-static {v10, v11, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    move-wide/from16 v136, v2

    sub-long v2, v0, v10

    const/16 v0, 0x35

    move-wide/from16 v138, v2

    move-wide/from16 v140, v6

    move-wide/from16 v1, v109

    move-wide/from16 v6, v115

    .line 1339
    invoke-static {v1, v2, v0, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v2, v6, v0

    const/16 v6, 0x2a

    move-wide/from16 v142, v2

    move-wide/from16 v144, v10

    move-wide/from16 v2, v107

    move-wide/from16 v10, v122

    .line 1341
    invoke-static {v2, v3, v6, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v6, v10, v2

    const/16 v10, 0x29

    move-wide/from16 v146, v6

    move-wide/from16 v11, v113

    move-wide/from16 v6, v126

    .line 1343
    invoke-static {v11, v12, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    move-wide/from16 v148, v2

    sub-long v2, v6, v10

    const/16 v6, 0x29

    .line 1346
    invoke-static {v10, v11, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long v10, v13, v6

    const/16 v12, 0x9

    .line 1348
    invoke-static {v0, v1, v12, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v12, v4, v0

    const/16 v4, 0x25

    move-wide/from16 v14, v148

    .line 1350
    invoke-static {v14, v15, v4, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long v14, v8, v4

    const/16 v8, 0x1f

    move-wide/from16 v150, v4

    move-wide/from16 v152, v14

    move-wide/from16 v4, v140

    move-wide/from16 v14, v144

    .line 1352
    invoke-static {v14, v15, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long v14, v4, v8

    move-wide/from16 v154, v8

    move-wide/from16 v4, v134

    const/16 v8, 0xc

    .line 1354
    invoke-static {v4, v5, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long v8, v2, v4

    const/16 v2, 0x2f

    move-wide/from16 v156, v4

    move-wide/from16 v158, v8

    move-wide/from16 v3, v132

    move-wide/from16 v8, v138

    .line 1356
    invoke-static {v3, v4, v2, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v4, v8, v2

    const/16 v8, 0x2c

    move-wide/from16 v160, v2

    move-wide/from16 v162, v4

    move-wide/from16 v2, v130

    move-wide/from16 v4, v142

    .line 1358
    invoke-static {v2, v3, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v8, v4, v2

    const/16 v4, 0x1e

    move-wide/from16 v164, v2

    move-wide/from16 v166, v8

    move-wide/from16 v2, v136

    move-wide/from16 v8, v146

    .line 1360
    invoke-static {v2, v3, v4, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v4, v8, v2

    .line 1364
    aget-wide v8, v83, v49

    move-wide/from16 v168, v2

    sub-long v2, v10, v8

    .line 1365
    aget-wide v8, v83, v51

    sub-long v10, v6, v8

    .line 1366
    aget-wide v6, v83, v56

    sub-long v8, v12, v6

    .line 1367
    aget-wide v6, v83, v62

    sub-long v12, v0, v6

    .line 1368
    aget-wide v0, v83, v63

    sub-long v6, v152, v0

    .line 1369
    aget-wide v0, v83, v61

    move-wide/from16 v170, v12

    sub-long v12, v150, v0

    .line 1370
    aget-wide v0, v83, v119

    move-wide/from16 v172, v12

    sub-long v12, v14, v0

    .line 1371
    aget-wide v0, v83, v16

    sub-long v14, v154, v0

    .line 1372
    aget-wide v0, v83, v18

    move-wide/from16 v174, v14

    sub-long v14, v158, v0

    .line 1373
    aget-wide v0, v83, v19

    move-wide/from16 v176, v14

    sub-long v14, v156, v0

    .line 1374
    aget-wide v0, v83, v20

    move-wide/from16 v178, v10

    sub-long v10, v162, v0

    .line 1375
    aget-wide v0, v83, v21

    move-wide/from16 v180, v10

    sub-long v10, v160, v0

    .line 1376
    aget-wide v0, v83, v22

    move-wide/from16 v182, v6

    sub-long v6, v166, v0

    .line 1377
    aget-wide v0, v83, v23

    aget-wide v18, v80, v50

    add-long v20, v0, v18

    sub-long v0, v164, v20

    .line 1378
    aget-wide v18, v83, v25

    aget-wide v20, v80, v26

    add-long v22, v18, v20

    move-wide/from16 v184, v6

    sub-long v6, v4, v22

    .line 1379
    aget-wide v4, v83, v28

    add-long v18, v4, v85

    sub-long v4, v168, v18

    move-wide/from16 v186, v6

    const/4 v6, 0x5

    .line 1382
    invoke-static {v4, v5, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long v6, v2, v4

    const/16 v2, 0x14

    .line 1384
    invoke-static {v10, v11, v2, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v10, v8, v2

    const/16 v8, 0x30

    .line 1386
    invoke-static {v0, v1, v8, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v8, v12, v0

    const/16 v12, 0x29

    move-wide/from16 v188, v2

    move-wide/from16 v2, v182

    .line 1388
    invoke-static {v14, v15, v12, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long v14, v2, v12

    const/16 v2, 0x2f

    move-wide/from16 v192, v0

    move-wide/from16 v190, v12

    move-wide/from16 v12, v178

    move-wide/from16 v0, v186

    .line 1390
    invoke-static {v12, v13, v2, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v12, v0, v2

    const/16 v0, 0x1c

    move-wide/from16 v196, v4

    move-wide/from16 v194, v12

    move-wide/from16 v12, v172

    move-wide/from16 v4, v176

    .line 1392
    invoke-static {v12, v13, v0, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v12, v4, v0

    const/16 v4, 0x10

    move-wide/from16 v200, v2

    move-wide/from16 v198, v12

    move-wide/from16 v12, v170

    move-wide/from16 v2, v180

    .line 1394
    invoke-static {v12, v13, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long v12, v2, v4

    const/16 v2, 0x19

    move-wide/from16 v204, v8

    move-wide/from16 v202, v12

    move-wide/from16 v12, v174

    move-wide/from16 v8, v184

    .line 1396
    invoke-static {v12, v13, v2, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v12, v8, v2

    const/16 v8, 0x21

    .line 1399
    invoke-static {v2, v3, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v8, v6, v2

    const/4 v6, 0x4

    .line 1401
    invoke-static {v0, v1, v6, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v6, v10, v0

    const/16 v10, 0x33

    .line 1403
    invoke-static {v4, v5, v10, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long v10, v14, v4

    move-wide/from16 v206, v0

    move-wide/from16 v208, v4

    move-wide/from16 v0, v200

    move-wide/from16 v14, v204

    const/16 v4, 0xd

    .line 1405
    invoke-static {v0, v1, v4, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v4, v14, v0

    const/16 v14, 0x22

    move-wide/from16 v210, v0

    move-wide/from16 v0, v196

    .line 1407
    invoke-static {v0, v1, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v14, v12, v0

    const/16 v12, 0x29

    move-wide/from16 v214, v2

    move-wide/from16 v212, v14

    move-wide/from16 v13, v192

    move-wide/from16 v2, v194

    .line 1409
    invoke-static {v13, v14, v12, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long v14, v2, v12

    const/16 v2, 0x3b

    move-wide/from16 v218, v0

    move-wide/from16 v216, v14

    move-wide/from16 v14, v188

    move-wide/from16 v0, v198

    .line 1411
    invoke-static {v14, v15, v2, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v14, v0, v2

    const/16 v0, 0x11

    move-wide/from16 v222, v10

    move-wide/from16 v220, v14

    move-wide/from16 v14, v190

    move-wide/from16 v10, v202

    .line 1413
    invoke-static {v14, v15, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v14, v10, v0

    const/16 v10, 0x26

    .line 1416
    invoke-static {v0, v1, v10, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v10, v8, v0

    const/16 v8, 0x13

    .line 1418
    invoke-static {v12, v13, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long v12, v6, v8

    const/16 v6, 0xa

    .line 1420
    invoke-static {v2, v3, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v6, v4, v2

    const/16 v4, 0x37

    move-wide/from16 v226, v2

    move-wide/from16 v224, v8

    move-wide/from16 v2, v218

    move-wide/from16 v8, v222

    .line 1422
    invoke-static {v2, v3, v4, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v4, v8, v2

    const/16 v8, 0x31

    move-wide/from16 v228, v2

    move-wide/from16 v2, v214

    .line 1424
    invoke-static {v2, v3, v8, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long v8, v14, v2

    const/16 v14, 0x12

    move-wide/from16 v232, v0

    move-wide/from16 v230, v8

    move-wide/from16 v8, v208

    move-wide/from16 v0, v212

    .line 1426
    invoke-static {v8, v9, v14, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long v14, v0, v8

    const/16 v0, 0x17

    move-wide/from16 v236, v2

    move-wide/from16 v234, v14

    move-wide/from16 v14, v206

    move-wide/from16 v1, v216

    .line 1428
    invoke-static {v14, v15, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v14

    move-wide/from16 v238, v6

    sub-long v6, v1, v14

    const/16 v0, 0x34

    move-wide/from16 v240, v6

    move-wide/from16 v1, v210

    move-wide/from16 v6, v220

    .line 1430
    invoke-static {v1, v2, v0, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v2, v6, v0

    const/16 v6, 0x18

    .line 1433
    invoke-static {v0, v1, v6, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v6, v10, v0

    const/16 v10, 0xd

    .line 1435
    invoke-static {v8, v9, v10, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v18

    sub-long v8, v12, v18

    const/16 v10, 0x8

    .line 1437
    invoke-static {v14, v15, v10, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v22

    sub-long v20, v4, v22

    const/16 v4, 0x2f

    move-wide/from16 v13, v236

    move-wide/from16 v11, v238

    .line 1439
    invoke-static {v13, v14, v4, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    sub-long v25, v11, v28

    move-wide/from16 v4, v232

    .line 1441
    invoke-static {v4, v5, v10, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v33

    sub-long v31, v2, v33

    const/16 v2, 0x11

    move-wide/from16 v3, v226

    move-wide/from16 v14, v230

    .line 1443
    invoke-static {v3, v4, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v38

    sub-long v35, v14, v38

    const/16 v2, 0x16

    move-wide/from16 v3, v224

    move-wide/from16 v14, v234

    .line 1445
    invoke-static {v3, v4, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v42

    sub-long v40, v14, v42

    const/16 v2, 0x25

    move-wide/from16 v3, v228

    move-wide/from16 v14, v240

    .line 1447
    invoke-static {v3, v4, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v47

    sub-long v45, v14, v47

    add-int/lit8 v2, v84, -0x2

    move-wide v12, v0

    move v1, v2

    move-wide v15, v8

    move-object/from16 v5, v59

    move-object/from16 v4, v80

    move-object/from16 v3, v83

    move-object/from16 v0, p0

    const/16 v8, 0xd

    const/4 v11, 0x1

    const/4 v14, 0x4

    move-wide v9, v6

    move-object/from16 v6, v60

    const/16 v7, 0x9

    goto/16 :goto_0

    :cond_2
    move-object/from16 v83, v3

    move-object/from16 v80, v4

    move-wide/from16 v54, v15

    const/4 v0, 0x0

    .line 1454
    aget-wide v1, v83, v0

    sub-long v3, v9, v1

    const/4 v0, 0x1

    .line 1455
    aget-wide v1, v83, v0

    sub-long v5, v12, v1

    const/4 v0, 0x2

    .line 1456
    aget-wide v1, v83, v0

    sub-long v15, v54, v1

    .line 1457
    aget-wide v0, v83, v17

    sub-long v7, v18, v0

    const/4 v0, 0x4

    .line 1458
    aget-wide v1, v83, v0

    sub-long v9, v20, v1

    const/4 v0, 0x5

    .line 1459
    aget-wide v1, v83, v0

    sub-long v11, v22, v1

    .line 1460
    aget-wide v0, v83, v24

    sub-long v13, v25, v0

    .line 1461
    aget-wide v0, v83, v27

    sub-long v18, v28, v0

    const/16 v0, 0x8

    .line 1462
    aget-wide v1, v83, v0

    sub-long v20, v31, v1

    const/16 v0, 0x9

    .line 1463
    aget-wide v1, v83, v0

    sub-long v22, v33, v1

    const/16 v0, 0xa

    .line 1464
    aget-wide v1, v83, v0

    sub-long v25, v35, v1

    .line 1465
    aget-wide v0, v83, v37

    sub-long v28, v38, v0

    const/16 v0, 0xc

    .line 1466
    aget-wide v1, v83, v0

    sub-long v31, v40, v1

    const/16 v0, 0xd

    .line 1467
    aget-wide v1, v83, v0

    const/4 v0, 0x0

    aget-wide v33, v80, v0

    add-long v35, v1, v33

    sub-long v1, v42, v35

    .line 1468
    aget-wide v33, v83, v44

    const/16 v30, 0x1

    aget-wide v35, v80, v30

    add-long v38, v33, v35

    sub-long v33, v45, v38

    const/16 v35, 0xf

    .line 1469
    aget-wide v35, v83, v35

    sub-long v38, v47, v35

    .line 1474
    aput-wide v3, p2, v0

    .line 1475
    aput-wide v5, p2, v30

    const/4 v0, 0x2

    .line 1476
    aput-wide v15, p2, v0

    .line 1477
    aput-wide v7, p2, v17

    const/4 v0, 0x4

    .line 1478
    aput-wide v9, p2, v0

    const/4 v0, 0x5

    .line 1479
    aput-wide v11, p2, v0

    .line 1480
    aput-wide v13, p2, v24

    .line 1481
    aput-wide v18, p2, v27

    const/16 v0, 0x8

    .line 1482
    aput-wide v20, p2, v0

    const/16 v0, 0x9

    .line 1483
    aput-wide v22, p2, v0

    const/16 v0, 0xa

    .line 1484
    aput-wide v25, p2, v0

    .line 1485
    aput-wide v28, p2, v37

    const/16 v0, 0xc

    .line 1486
    aput-wide v31, p2, v0

    const/16 v0, 0xd

    .line 1487
    aput-wide v1, p2, v0

    .line 1488
    aput-wide v33, p2, v44

    const/16 v0, 0xf

    .line 1489
    aput-wide v38, p2, v0

    return-void
.end method

.method encryptBlock([J[J)V
    .locals 250

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1022
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->kw:[J

    .line 1023
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->t:[J

    .line 1024
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$300()[I

    move-result-object v5

    .line 1025
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v6

    .line 1028
    array-length v7, v3

    const/16 v8, 0x21

    if-eq v7, v8, :cond_0

    .line 1030
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1032
    :cond_0
    array-length v7, v4

    const/4 v8, 0x5

    if-eq v7, v8, :cond_1

    .line 1034
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    const/4 v7, 0x0

    .line 1040
    aget-wide v9, v1, v7

    const/4 v11, 0x1

    .line 1041
    aget-wide v12, v1, v11

    const/4 v14, 0x2

    .line 1042
    aget-wide v15, v1, v14

    const/16 v17, 0x3

    .line 1043
    aget-wide v18, v1, v17

    const/4 v14, 0x4

    .line 1044
    aget-wide v20, v1, v14

    .line 1045
    aget-wide v22, v1, v8

    const/16 v24, 0x6

    .line 1046
    aget-wide v25, v1, v24

    const/16 v27, 0x7

    .line 1047
    aget-wide v28, v1, v27

    const/16 v8, 0x8

    .line 1048
    aget-wide v30, v1, v8

    const/16 v8, 0x9

    .line 1049
    aget-wide v32, v1, v8

    const/16 v8, 0xa

    .line 1050
    aget-wide v34, v1, v8

    const/16 v36, 0xb

    .line 1051
    aget-wide v37, v1, v36

    const/16 v8, 0xc

    .line 1052
    aget-wide v39, v1, v8

    const/16 v8, 0xd

    .line 1053
    aget-wide v41, v1, v8

    const/16 v43, 0xe

    .line 1054
    aget-wide v44, v1, v43

    const/16 v46, 0xf

    .line 1055
    aget-wide v46, v1, v46

    .line 1060
    aget-wide v48, v3, v7

    add-long v50, v9, v48

    .line 1061
    aget-wide v9, v3, v11

    add-long v48, v12, v9

    const/4 v1, 0x2

    .line 1062
    aget-wide v9, v3, v1

    add-long v12, v15, v9

    .line 1063
    aget-wide v9, v3, v17

    add-long v15, v18, v9

    .line 1064
    aget-wide v9, v3, v14

    add-long v18, v20, v9

    const/4 v1, 0x5

    .line 1065
    aget-wide v9, v3, v1

    add-long v20, v22, v9

    .line 1066
    aget-wide v9, v3, v24

    add-long v22, v25, v9

    .line 1067
    aget-wide v9, v3, v27

    add-long v25, v28, v9

    const/16 v1, 0x8

    .line 1068
    aget-wide v9, v3, v1

    add-long v28, v30, v9

    const/16 v1, 0x9

    .line 1069
    aget-wide v9, v3, v1

    add-long v30, v32, v9

    const/16 v1, 0xa

    .line 1070
    aget-wide v9, v3, v1

    add-long v32, v34, v9

    .line 1071
    aget-wide v9, v3, v36

    add-long v34, v37, v9

    const/16 v1, 0xc

    .line 1072
    aget-wide v9, v3, v1

    add-long v37, v39, v9

    .line 1073
    aget-wide v9, v3, v8

    aget-wide v39, v4, v7

    add-long v52, v9, v39

    add-long v9, v41, v52

    .line 1074
    aget-wide v39, v3, v43

    aget-wide v41, v4, v11

    add-long v52, v39, v41

    add-long v39, v44, v52

    const/16 v1, 0xf

    .line 1075
    aget-wide v41, v3, v1

    add-long v44, v46, v41

    move-wide/from16 v62, v9

    move-wide/from16 v54, v20

    move-wide/from16 v56, v25

    move-wide/from16 v58, v30

    move-wide/from16 v60, v34

    move-wide/from16 v64, v44

    move-wide/from16 v9, v48

    const/4 v1, 0x1

    move-wide/from16 v248, v12

    move-wide v12, v15

    move-wide/from16 v15, v248

    :goto_0
    const/16 v11, 0x14

    if-ge v1, v11, :cond_2

    .line 1090
    aget v11, v5, v1

    .line 1091
    aget v20, v6, v1

    const/16 v7, 0x18

    move-object/from16 v66, v5

    move-object/from16 v67, v6

    add-long v5, v50, v9

    .line 1099
    invoke-static {v9, v10, v7, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    move/from16 v68, v1

    add-long v0, v15, v12

    .line 1100
    invoke-static {v12, v13, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    move-wide/from16 v69, v9

    move-wide/from16 v14, v54

    add-long v8, v18, v14

    const/16 v7, 0x8

    .line 1101
    invoke-static {v14, v15, v7, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    const/16 v10, 0x2f

    move-object/from16 v73, v3

    move-wide/from16 v71, v8

    move-wide/from16 v7, v56

    add-long v2, v22, v7

    .line 1102
    invoke-static {v7, v8, v10, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    move-wide/from16 v74, v14

    move-wide/from16 v9, v58

    add-long v14, v28, v9

    move-object/from16 v76, v4

    const/16 v4, 0x8

    .line 1103
    invoke-static {v9, v10, v4, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v4, 0x11

    move/from16 v79, v11

    move-wide/from16 v80, v12

    move-wide/from16 v77, v14

    move-wide/from16 v14, v60

    add-long v11, v32, v14

    .line 1104
    invoke-static {v14, v15, v4, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v4, 0x16

    move-wide/from16 v82, v7

    move-wide/from16 v84, v11

    move-wide/from16 v7, v62

    add-long v11, v37, v7

    .line 1105
    invoke-static {v7, v8, v4, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v4, 0x25

    move-wide/from16 v88, v2

    move-wide/from16 v86, v11

    move-wide/from16 v11, v64

    add-long v2, v39, v11

    .line 1106
    invoke-static {v11, v12, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v4, 0x26

    move-wide/from16 v90, v2

    add-long v2, v5, v9

    .line 1108
    invoke-static {v9, v10, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    const/16 v6, 0x13

    add-long v9, v0, v7

    .line 1109
    invoke-static {v7, v8, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long v6, v88, v13

    const/16 v8, 0xa

    .line 1110
    invoke-static {v13, v14, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v8, 0x37

    move-wide/from16 v92, v4

    add-long v4, v71, v11

    .line 1111
    invoke-static {v11, v12, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v8, 0x31

    move-wide/from16 v94, v13

    add-long v13, v84, v82

    move-wide/from16 v96, v0

    move-wide/from16 v0, v82

    .line 1112
    invoke-static {v0, v1, v8, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v8, 0x12

    move-wide/from16 v98, v13

    add-long v13, v86, v80

    move-wide/from16 v100, v11

    move-wide/from16 v11, v80

    .line 1113
    invoke-static {v11, v12, v8, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v8, 0x17

    move-wide/from16 v102, v13

    add-long v13, v90, v74

    move-wide/from16 v104, v6

    move-wide/from16 v6, v74

    .line 1114
    invoke-static {v6, v7, v8, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    const/16 v8, 0x34

    move-wide/from16 v106, v13

    add-long v13, v77, v69

    move-wide/from16 v108, v4

    move-wide/from16 v4, v69

    .line 1115
    invoke-static {v4, v5, v8, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    const/16 v8, 0x21

    move-wide/from16 v110, v13

    add-long v13, v2, v0

    .line 1117
    invoke-static {v0, v1, v8, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long v2, v9, v6

    const/4 v8, 0x4

    .line 1118
    invoke-static {v6, v7, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    const/16 v8, 0x33

    add-long v9, v108, v11

    .line 1119
    invoke-static {v11, v12, v8, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    move-wide/from16 v112, v0

    add-long v0, v104, v4

    const/16 v8, 0xd

    .line 1120
    invoke-static {v4, v5, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    const/16 v8, 0x22

    move-wide/from16 v114, v11

    add-long v11, v102, v100

    move-wide/from16 v116, v6

    move-wide/from16 v6, v100

    .line 1121
    invoke-static {v6, v7, v8, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    const/16 v8, 0x29

    move-wide/from16 v118, v11

    add-long v11, v106, v96

    move-wide/from16 v120, v4

    move-wide/from16 v4, v96

    .line 1122
    invoke-static {v4, v5, v8, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    const/16 v8, 0x3b

    move-wide/from16 v122, v11

    add-long v11, v110, v94

    move-wide/from16 v124, v9

    move-wide/from16 v9, v94

    .line 1123
    invoke-static {v9, v10, v8, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v10, 0x11

    move-wide/from16 v126, v11

    add-long v11, v98, v92

    move-wide/from16 v128, v0

    move-wide/from16 v0, v92

    .line 1124
    invoke-static {v0, v1, v10, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v130, v11

    add-long v10, v13, v6

    const/4 v12, 0x5

    .line 1126
    invoke-static {v6, v7, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    const/16 v12, 0x14

    add-long v13, v2, v8

    .line 1127
    invoke-static {v8, v9, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    const/16 v8, 0x30

    move-wide/from16 v132, v6

    add-long v6, v128, v4

    .line 1128
    invoke-static {v4, v5, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    const/16 v8, 0x29

    move-wide/from16 v134, v4

    add-long v4, v124, v0

    .line 1129
    invoke-static {v0, v1, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v8, 0x2f

    move-wide/from16 v136, v2

    add-long v2, v122, v120

    move-wide/from16 v138, v0

    move-wide/from16 v0, v120

    .line 1130
    invoke-static {v0, v1, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v8, 0x1c

    move-wide/from16 v140, v2

    add-long v2, v126, v116

    move-wide/from16 v142, v6

    move-wide/from16 v6, v116

    .line 1131
    invoke-static {v6, v7, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    const/16 v8, 0x10

    move-wide/from16 v144, v2

    add-long v2, v130, v114

    move-wide/from16 v146, v6

    move-wide/from16 v6, v114

    .line 1132
    invoke-static {v6, v7, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    const/16 v8, 0x19

    move-wide/from16 v148, v2

    add-long v2, v118, v112

    move-wide/from16 v150, v4

    move-wide/from16 v4, v112

    .line 1133
    invoke-static {v4, v5, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    .line 1138
    aget-wide v8, v73, v79

    add-long v15, v10, v8

    add-int/lit8 v11, v79, 0x1

    .line 1139
    aget-wide v8, v73, v11

    move/from16 v152, v11

    add-long v10, v0, v8

    add-int/lit8 v0, v79, 0x2

    .line 1140
    aget-wide v8, v73, v0

    add-long v18, v13, v8

    add-int/lit8 v1, v79, 0x3

    .line 1141
    aget-wide v8, v73, v1

    add-long v12, v6, v8

    add-int/lit8 v6, v79, 0x4

    .line 1142
    aget-wide v7, v73, v6

    add-long v21, v150, v7

    add-int/lit8 v7, v79, 0x5

    .line 1143
    aget-wide v8, v73, v7

    move/from16 v153, v6

    move/from16 v154, v7

    add-long v6, v146, v8

    add-int/lit8 v8, v79, 0x6

    .line 1144
    aget-wide v25, v73, v8

    add-long v28, v142, v25

    add-int/lit8 v9, v79, 0x7

    .line 1145
    aget-wide v25, v73, v9

    move/from16 v155, v8

    move/from16 v156, v9

    add-long v8, v4, v25

    add-int/lit8 v4, v79, 0x8

    .line 1146
    aget-wide v25, v73, v4

    add-long v30, v144, v25

    add-int/lit8 v5, v79, 0x9

    .line 1147
    aget-wide v25, v73, v5

    move/from16 v157, v4

    move/from16 v158, v5

    add-long v4, v138, v25

    add-int/lit8 v14, v79, 0xa

    .line 1148
    aget-wide v25, v73, v14

    add-long v32, v148, v25

    add-int/lit8 v23, v79, 0xb

    .line 1149
    aget-wide v25, v73, v23

    move/from16 v159, v0

    move/from16 v160, v1

    add-long v0, v136, v25

    add-int/lit8 v25, v79, 0xc

    .line 1150
    aget-wide v34, v73, v25

    add-long v37, v2, v34

    add-int/lit8 v2, v79, 0xd

    .line 1151
    aget-wide v34, v73, v2

    aget-wide v39, v76, v20

    add-long v41, v34, v39

    move/from16 v161, v2

    add-long v2, v134, v41

    add-int/lit8 v26, v79, 0xe

    .line 1152
    aget-wide v34, v73, v26

    add-int/lit8 v39, v20, 0x1

    aget-wide v41, v76, v39

    add-long v44, v34, v41

    add-long v34, v140, v44

    add-int/lit8 v40, v79, 0xf

    .line 1153
    aget-wide v41, v73, v40

    move-wide/from16 v163, v2

    move/from16 v162, v14

    move/from16 v14, v68

    int-to-long v2, v14

    add-long v44, v41, v2

    move-wide/from16 v165, v2

    add-long v2, v132, v44

    move/from16 v167, v14

    const/16 v14, 0x29

    move-wide/from16 v168, v2

    add-long v2, v15, v10

    .line 1158
    invoke-static {v10, v11, v14, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long v14, v18, v12

    move-wide/from16 v170, v10

    const/16 v10, 0x9

    .line 1159
    invoke-static {v12, v13, v10, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v10, 0x25

    move-wide/from16 v172, v11

    add-long v11, v21, v6

    .line 1160
    invoke-static {v6, v7, v10, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    const/16 v10, 0x1f

    move-wide/from16 v174, v6

    add-long v6, v28, v8

    .line 1161
    invoke-static {v8, v9, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    move-wide/from16 v176, v8

    add-long v8, v30, v4

    const/16 v10, 0xc

    .line 1162
    invoke-static {v4, v5, v10, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    const/16 v10, 0x2f

    move-wide/from16 v178, v8

    add-long v8, v32, v0

    .line 1163
    invoke-static {v0, v1, v10, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v10, 0x2c

    move-wide/from16 v180, v8

    add-long v8, v37, v163

    move-wide/from16 v182, v11

    move-wide/from16 v11, v163

    .line 1164
    invoke-static {v11, v12, v10, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    const/16 v12, 0x1e

    move-wide/from16 v184, v8

    add-long v8, v34, v168

    move-wide/from16 v186, v0

    move-wide/from16 v0, v168

    .line 1165
    invoke-static {v0, v1, v12, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v12, 0x10

    move-wide/from16 v188, v8

    add-long v8, v2, v4

    .line 1167
    invoke-static {v4, v5, v12, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    const/16 v4, 0x22

    add-long v12, v14, v10

    .line 1168
    invoke-static {v10, v11, v4, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    const/16 v10, 0x38

    add-long v14, v6, v186

    move-wide/from16 v6, v186

    .line 1169
    invoke-static {v6, v7, v10, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    const/16 v10, 0x33

    move-wide/from16 v190, v2

    add-long v2, v182, v0

    .line 1170
    invoke-static {v0, v1, v10, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long v10, v180, v176

    move-wide/from16 v194, v4

    move-wide/from16 v192, v6

    move-wide/from16 v6, v176

    const/4 v4, 0x4

    .line 1171
    invoke-static {v6, v7, v4, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    const/16 v4, 0x35

    move-wide/from16 v196, v10

    add-long v10, v184, v172

    move-wide/from16 v198, v0

    move-wide/from16 v0, v172

    .line 1172
    invoke-static {v0, v1, v4, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v4, 0x2a

    move-wide/from16 v200, v10

    add-long v10, v188, v174

    move-wide/from16 v202, v14

    move-wide/from16 v14, v174

    .line 1173
    invoke-static {v14, v15, v4, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    const/16 v4, 0x29

    move-wide/from16 v204, v10

    add-long v10, v178, v170

    move-wide/from16 v206, v0

    move-wide/from16 v0, v170

    .line 1174
    invoke-static {v0, v1, v4, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v4, 0x1f

    move-wide/from16 v208, v10

    add-long v10, v8, v5

    .line 1176
    invoke-static {v5, v6, v4, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    const/16 v6, 0x2c

    add-long v7, v12, v14

    .line 1177
    invoke-static {v14, v15, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v6, 0x2f

    add-long v14, v2, v206

    move-wide/from16 v2, v206

    .line 1178
    invoke-static {v2, v3, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    const/16 v6, 0x2e

    move-wide/from16 v210, v4

    add-long v4, v202, v0

    .line 1179
    invoke-static {v0, v1, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v6, 0x13

    move-wide/from16 v212, v2

    add-long v2, v200, v198

    move-wide/from16 v214, v12

    move-wide/from16 v12, v198

    .line 1180
    invoke-static {v12, v13, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v6, 0x2a

    move-wide/from16 v216, v2

    add-long v2, v204, v194

    move-wide/from16 v218, v0

    move-wide/from16 v0, v194

    .line 1181
    invoke-static {v0, v1, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v6, 0x2c

    move-wide/from16 v220, v2

    add-long v2, v208, v192

    move-wide/from16 v222, v14

    move-wide/from16 v14, v192

    .line 1182
    invoke-static {v14, v15, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    const/16 v6, 0x19

    move-wide/from16 v224, v2

    add-long v2, v196, v190

    move-wide/from16 v226, v0

    move-wide/from16 v0, v190

    .line 1183
    invoke-static {v0, v1, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v228, v2

    add-long v2, v10, v12

    const/16 v6, 0x9

    .line 1185
    invoke-static {v12, v13, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v6, 0x30

    add-long v11, v7, v14

    .line 1186
    invoke-static {v14, v15, v6, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    const/16 v8, 0x23

    add-long v13, v4, v226

    move-wide/from16 v4, v226

    .line 1187
    invoke-static {v4, v5, v8, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    const/16 v8, 0x34

    move-wide/from16 v230, v9

    add-long v9, v222, v0

    .line 1188
    invoke-static {v0, v1, v8, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v8, 0x17

    move-wide/from16 v232, v4

    add-long v4, v220, v218

    move-wide/from16 v234, v6

    move-wide/from16 v6, v218

    .line 1189
    invoke-static {v6, v7, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    const/16 v8, 0x1f

    move-wide/from16 v236, v4

    add-long v4, v224, v214

    move-wide/from16 v238, v0

    move-wide/from16 v0, v214

    .line 1190
    invoke-static {v0, v1, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v8, 0x25

    move-wide/from16 v240, v4

    add-long v4, v228, v212

    move-wide/from16 v242, v13

    move-wide/from16 v13, v212

    .line 1191
    invoke-static {v13, v14, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v8, 0x14

    move-wide/from16 v244, v4

    add-long v4, v216, v210

    move-wide/from16 v246, v0

    move-wide/from16 v0, v210

    .line 1192
    invoke-static {v0, v1, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 1197
    aget-wide v15, v73, v152

    add-long v50, v2, v15

    .line 1198
    aget-wide v2, v73, v159

    add-long v15, v6, v2

    .line 1199
    aget-wide v2, v73, v160

    add-long v6, v11, v2

    .line 1200
    aget-wide v2, v73, v153

    add-long v11, v13, v2

    .line 1201
    aget-wide v2, v73, v154

    add-long v18, v9, v2

    .line 1202
    aget-wide v2, v73, v155

    move-wide/from16 v8, v246

    add-long v54, v8, v2

    .line 1203
    aget-wide v2, v73, v156

    move-wide/from16 v8, v242

    add-long v13, v8, v2

    .line 1204
    aget-wide v2, v73, v157

    add-long v56, v0, v2

    .line 1205
    aget-wide v0, v73, v158

    move-wide/from16 v2, v240

    add-long v28, v2, v0

    .line 1206
    aget-wide v0, v73, v162

    move-wide/from16 v2, v238

    add-long v58, v2, v0

    .line 1207
    aget-wide v0, v73, v23

    move-wide/from16 v2, v244

    add-long v32, v2, v0

    .line 1208
    aget-wide v0, v73, v25

    add-long v60, v234, v0

    .line 1209
    aget-wide v0, v73, v161

    add-long v37, v4, v0

    .line 1210
    aget-wide v0, v73, v26

    aget-wide v2, v76, v39

    add-long v4, v0, v2

    add-long v62, v232, v4

    .line 1211
    aget-wide v0, v73, v40

    const/4 v2, 0x2

    add-int/lit8 v20, v20, 0x2

    aget-wide v2, v76, v20

    add-long v4, v0, v2

    add-long v39, v236, v4

    add-int/lit8 v0, v79, 0x10

    .line 1212
    aget-wide v0, v73, v0

    add-long v2, v0, v165

    const-wide/16 v0, 0x1

    add-long v4, v2, v0

    add-long v64, v230, v4

    add-int/lit8 v1, v167, 0x2

    move-wide/from16 v22, v13

    move-wide v9, v15

    move-object/from16 v5, v66

    move-object/from16 v3, v73

    move-object/from16 v4, v76

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    const/16 v8, 0xd

    const/4 v14, 0x4

    move-wide v15, v6

    move-wide v12, v11

    move-object/from16 v6, v67

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_2
    move-object v0, v2

    move-wide v1, v12

    move-wide v3, v15

    move-wide/from16 v30, v58

    move-wide/from16 v14, v60

    move-wide/from16 v7, v62

    move-wide/from16 v11, v64

    const/4 v5, 0x0

    .line 1219
    aput-wide v50, v0, v5

    const/4 v5, 0x1

    .line 1220
    aput-wide v9, v0, v5

    const/4 v5, 0x2

    .line 1221
    aput-wide v3, v0, v5

    .line 1222
    aput-wide v1, v0, v17

    const/4 v1, 0x4

    .line 1223
    aput-wide v18, v0, v1

    const/4 v1, 0x5

    .line 1224
    aput-wide v54, v0, v1

    .line 1225
    aput-wide v22, v0, v24

    .line 1226
    aput-wide v56, v0, v27

    const/16 v1, 0x8

    .line 1227
    aput-wide v28, v0, v1

    const/16 v1, 0x9

    .line 1228
    aput-wide v30, v0, v1

    const/16 v1, 0xa

    .line 1229
    aput-wide v32, v0, v1

    .line 1230
    aput-wide v14, v0, v36

    const/16 v1, 0xc

    .line 1231
    aput-wide v37, v0, v1

    const/16 v1, 0xd

    .line 1232
    aput-wide v7, v0, v1

    .line 1233
    aput-wide v39, v0, v43

    const/16 v1, 0xf

    .line 1234
    aput-wide v11, v0, v1

    return-void
.end method
